# Contribute a translation

-----

[TOC]

-----

## Why this page exists

Most of ZKPedia was written in Chinese, and the largest share of our readers now arrive in English. Several of the deepest series in the library — Yu Guo's *Understanding PLONK* and *Understanding Lasso* above all — have no English version anywhere on the internet. Translating one article is therefore one of the highest-leverage contributions you can make here, and it does not require you to be a cryptographer. It requires you to read Chinese and to care about getting the mathematics right.

## How the English edition is laid out

There is no gettext or `.po` pipeline any more. The English book is plain Markdown in its own source tree, and **the English path mirrors the Chinese path**:

```text
src/zkp-intro/1/zkp-back.md      ->  https://learn.zkpunk.pro/zkp-intro/1/zkp-back.html
src-en/zkp-intro/1/zkp-back.md   ->  https://learn.zkpunk.pro/en/zkp-intro/1/zkp-back.html
```

Keeping the paths identical is what makes the globe icon in the top-right corner switch between the two editions on the same article. If you invent a new filename for your translation, the switcher will land readers on a "not translated yet" page instead, so please mirror the Chinese path exactly.

Images live next to the article, in the same `img/` or `imgs/` folder name the Chinese article uses. Copy them into your English folder rather than linking across trees, so each edition stays self-contained.

## Adding an article

1. Fork [the repository](https://github.com/ZKPunk-Org/ZKPedia).
2. Find the Chinese source under `src/`, and create the mirrored file under `src-en/`.
3. Add the article to `src-en/SUMMARY.md`. If it belongs to a series that is only partly translated, list the remaining parts as draft entries — a Markdown link with empty parentheses, `- [Part 4]()` — so readers can see what is still missing.
4. Open a pull request. Once it is merged, GitHub Actions rebuilds and it appears on <https://learn.zkpunk.pro/en/> within a few minutes.

Run `just status` at any time to see which pages still have no English counterpart.

## Attribution is not optional

Nearly everything in this library was written by someone else and republished here with credit. A translation is a derivative work, so it carries the same obligation: keep the author block at the top of the article, keep the link to the original, and add yourself as translator. The convention is:

```text
> Author: **Yu Guo @ SECBIT** (郭宇), <https://github.com/sec-bit>
> Original (Chinese): <https://github.com/sec-bit/learning-zkp/>
> Translated by: [your name](https://github.com/you)
```

If you are unsure whether a piece may be translated and republished, ask in [Discord](https://discord.gg/y2bGrAKQ4Q) before you start, so nobody's evening is wasted.

## On machine translation

Using an LLM for the first pass is fine and frankly sensible — it is 2026. Shipping the raw output is not. These articles carry their weight in the precision of their notation, and models still quietly mangle subscripts, flatten the distinction between prover and verifier in pronoun-heavy passages, translate 承诺 by its everyday sense instead of "commitment", and rewrite `\omega` as `w`. Read the whole thing against the original, render it locally, and check every formula before you open the pull request. A pull request that says "machine-translated, then reviewed line by line by me" is welcome; one that says only "machine-translated" is not.

There is a head start available: `translation-corpus/en.po.all` holds a near-complete machine translation of most of the library from the old gettext pipeline, paragraph by paragraph. It is raw material to edit against, not a translation.

## Formatting

The conventions are the same as the Chinese edition. Put `[TOC]` near the top of a long article to generate its table of contents. Mathematics is rendered by [KaTeX](https://katex.org/) at build time, using ordinary `$...$` and `$$...$$` delimiters, so you can test a formula at <https://katex.org/#demo> before committing. For callouts, use [mdbook-admonish](https://tommilligan.github.io/mdbook-admonish/):

````text
```admonish note title="Notation"
Throughout this article, $\omega$ denotes a primitive root of unity.
```
````

## Building locally

You need [Rust](https://www.rust-lang.org/tools/install) and [just](https://github.com/casey/just).

```bash
just init        # install mdbook and its preprocessors
just serve-en    # English edition, http://localhost:3001
just serve       # Chinese edition, http://localhost:3000
just build       # build both into ./book
```

`just build` builds the Chinese edition into `book/` and the English edition into `book/en/`, in that order — the Chinese build clears `book/` first, so do not run them the other way around.

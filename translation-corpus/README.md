# Translation corpus (archived)

This directory is the remains of the old gettext/`.po` translation pipeline. That
pipeline is no longer part of the build: `mdbook-gettext` ran before
`mdbook-katex` and shredded any paragraph containing `$...$`, which is most of
this library, so the English build silently fell back to Chinese. The English
edition is now plain parallel Markdown under `src-en/`.

The files are kept because one of them is genuinely valuable:

| File | What it is |
| --- | --- |
| `en.po.all` | 7,950 paragraph pairs, 99.9% filled — a complete machine translation of nearly the whole library, including *Understanding PLONK*, *Understanding Lasso*, *Learning zk-SNARKs from Scratch* and the halo2 tutorial |
| `en.po` | The hand-reviewed subset that reached production: 134 entries, 113 of them empty |
| `messages.pot`, `messages.pot.plonk` | Extraction templates, stale |
| `DEBUG-NOTES-2023.md` | The 2023 debugging notes that diagnosed the KaTeX/gettext collision and concluded 「解决方案：暂无」 |

`en.po.all` is raw material, not a translation. It is a useful first pass to edit
against rather than starting from a blank file, on the same terms as any other
machine output: read it against the Chinese original, check every formula, and do
not ship it unreviewed. See `src-en/how-to-contribute.md`.

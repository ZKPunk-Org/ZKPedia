#!/usr/bin/env python3
"""Report which Chinese pages in src/ have no English counterpart in src-en/.

The English edition mirrors Chinese paths exactly, so a page is considered
translated when src-en/<same relative path> exists. Run with `just status`.
"""
import os
import signal
import sys

# Behave like a normal CLI tool when piped into head/less.
try:
    signal.signal(signal.SIGPIPE, signal.SIG_DFL)
except (AttributeError, ValueError):
    pass

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ZH, EN = os.path.join(ROOT, "src"), os.path.join(ROOT, "src-en")

SKIP_PREFIXES = ("halo2/tmp/draws/",)
SKIP_NAMES = {"SUMMARY.md", "404.md", "README.md", "how-to-contribute.md", "vision.md"}


def pages(root):
    out = set()
    for dirpath, _dirs, files in os.walk(root):
        for f in files:
            if not f.endswith(".md"):
                continue
            rel = os.path.relpath(os.path.join(dirpath, f), root)
            if f in SKIP_NAMES or rel.startswith(SKIP_PREFIXES):
                continue
            out.add(rel)
    return out


def main():
    if not os.path.isdir(EN):
        sys.exit("src-en/ not found")
    zh, en = pages(ZH), pages(EN)
    missing = sorted(zh - en)
    orphan = sorted(en - zh)
    done = len(zh) - len(missing)
    pct = done / len(zh) * 100 if zh else 0.0
    print(f"English coverage: {done}/{len(zh)} pages ({pct:.1f}%)\n")
    if missing:
        print("Not translated yet:")
        for m in missing:
            print(f"  src/{m}")
    if orphan:
        print("\nEnglish pages with no Chinese counterpart (path mismatch?):")
        for o in orphan:
            print(f"  src-en/{o}")


if __name__ == "__main__":
    main()

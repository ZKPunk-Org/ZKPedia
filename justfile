#!/usr/bin/env just --justfile
#
# ZKPedia build tasks.
#
#   just serve      preview the Chinese edition   (http://localhost:3000)
#   just serve-en   preview the English edition   (http://localhost:3001)
#   just build      build both editions into ./book
#
# The English edition is plain parallel Markdown under src-en/, mirroring the
# Chinese paths under src/. There is no gettext/po pipeline any more.

set shell := ["bash", "-euo", "pipefail", "-c"]

BIN_DIR := env_var_or_default("MDBOOK_BIN_DIR", env_var("HOME") + "/.local/bin")

MDBOOK_VERSION       := "v0.4.35"
MERMAID_VERSION      := "v0.12.6"
OPEN_ON_GH_VERSION   := "2.4.1"
KATEX_VERSION        := "v0.5.8pub"
TOC_VERSION          := "0.14.1"
ADMONISH_VERSION     := "v1.13.0"

EN_TITLE       := "ZKPedia"
EN_DESCRIPTION := "A community-maintained zero-knowledge proof knowledge base, in English."

default: serve

#
# Build
#

# Build both editions. Chinese first: it clears ./book, which contains ./book/en.
build: build-zh build-en

build-zh:
    @just _log-head "Building the Chinese edition -> ./book"
    mdbook build

build-en:
    @just _log-head "Building the English edition -> ./book/en"
    MDBOOK_BOOK__SRC=src-en MDBOOK_BOOK__LANGUAGE=en MDBOOK_BOOK__TITLE="{{EN_TITLE}}" MDBOOK_BOOK__DESCRIPTION="{{EN_DESCRIPTION}}" MDBOOK_OUTPUT__HTML__SITE_URL=/en/ mdbook build -d book/en

serve PORT='3000':
    @just _log-head "Serving the Chinese edition on http://localhost:{{PORT}}"
    mdbook serve -n 0.0.0.0 -p {{PORT}}

serve-en PORT='3001':
    @just _log-head "Serving the English edition on http://localhost:{{PORT}}"
    MDBOOK_BOOK__SRC=src-en MDBOOK_BOOK__LANGUAGE=en MDBOOK_BOOK__TITLE="{{EN_TITLE}}" MDBOOK_OUTPUT__HTML__SITE_URL=/en/ mdbook serve -d book/en -n 0.0.0.0 -p {{PORT}}

# Which Chinese pages have no English counterpart yet?
status:
    @python3 tools/translation-status.py

#
# Toolchain
#

# Install the toolchain with cargo (local development).
init:
    cargo install mdbook mdbook-admonish mdbook-mermaid mdbook-open-on-gh mdbook-katex mdbook-toc

# Install prebuilt x86_64 Linux binaries (CI).
init-builder:
    @just _install-bin https://github.com/rust-lang/mdBook/releases/download/{{MDBOOK_VERSION}}/mdbook-{{MDBOOK_VERSION}}-x86_64-unknown-linux-gnu.tar.gz mdbook
    @just _install-bin https://github.com/badboy/mdbook-mermaid/releases/download/{{MERMAID_VERSION}}/mdbook-mermaid-{{MERMAID_VERSION}}-x86_64-unknown-linux-gnu.tar.gz mdbook-mermaid
    @just _install-bin https://github.com/badboy/mdbook-open-on-gh/releases/download/{{OPEN_ON_GH_VERSION}}/mdbook-open-on-gh-{{OPEN_ON_GH_VERSION}}-x86_64-unknown-linux-gnu.tar.gz mdbook-open-on-gh
    @just _install-bin https://github.com/lzanini/mdbook-katex/releases/download/{{KATEX_VERSION}}/mdbook-katex-v0.5.8-x86_64-unknown-linux-gnu.tar.gz mdbook-katex
    @just _install-bin https://github.com/badboy/mdbook-toc/releases/download/{{TOC_VERSION}}/mdbook-toc-{{TOC_VERSION}}-x86_64-unknown-linux-gnu.tar.gz mdbook-toc
    @just _install-bin https://github.com/tommilligan/mdbook-admonish/releases/download/{{ADMONISH_VERSION}}/mdbook-admonish-{{ADMONISH_VERSION}}-x86_64-unknown-linux-gnu.tar.gz mdbook-admonish
    @just _log-info "Toolchain installed into {{BIN_DIR}}"

_install-bin URL BIN:
    @just _log-info "Installing {{BIN}}"
    mkdir -p "{{BIN_DIR}}" /tmp/mdbin
    curl --proto '=https' --tlsv1.2 -sSfL "{{URL}}" -o /tmp/mdbin/{{BIN}}.tar.gz
    tar zxf /tmp/mdbin/{{BIN}}.tar.gz -C /tmp/mdbin {{BIN}} 2>/dev/null || tar zxf /tmp/mdbin/{{BIN}}.tar.gz -C /tmp/mdbin
    chmod +x /tmp/mdbin/{{BIN}}
    mv /tmp/mdbin/{{BIN}} "{{BIN_DIR}}/{{BIN}}"

#
# Logging
#

_log-head LINE:
    @printf '\033[1;32m[ZKPedia]\033[0m %s\n' "{{LINE}}"

_log-info LINE:
    @printf '\033[1;34m[ZKPedia]\033[0m %s\n' "{{LINE}}"

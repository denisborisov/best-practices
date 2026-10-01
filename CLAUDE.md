# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Nature of the repository

Documentation-only: a personal collection of work practices written as Markdown. There is no source code, build, lint, or test tooling.

- `README.md` — one-line description of the repo.
- `local_development.md` — the main document: a numbered, step-by-step macOS (zsh) dev-machine setup guide (Xcode CLT, git, Oh My Zsh, Homebrew, Warp, uv, Python, Go, Docker, K8s, CLI tools, Claude Code, VS Code, shell plugins).

## Conventions in `local_development.md`

- Top-level sections are numbered (`## 1.` … `## 14.`). When adding or removing a section, renumber the following ones.
- Tools are linked to their official sites in the section heading.
- The VS Code section (13) lists extensions as `# <Extension Name>` headings, in roughly alphabetical order, followed by a large settings block; keep new extensions in that order.
- Commands target zsh on macOS; keep new instructions consistent with that.

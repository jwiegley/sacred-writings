# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a LaTeX-based project for typesetting sacred Bahá'í texts, particularly focused on bilingual editions with Persian/Arabic and English translations. The main outputs are PDF documents of religious texts including The Hidden Words, Seven Valleys, and other sacred writings.

## Build System

### Building PDFs
- **Main build command**: `make` - Builds all PDF documents
- **Individual PDFs**: `make [filename].pdf` (e.g., `make hidden-words.pdf`)
- **Clean build artifacts**: `make clean`

### With Nix
- **Build**: `nix build -f .`
- Output location: `./result/share/doc/pdf/hidden-words.pdf`

### Requirements
- XeLaTeX (required for Unicode and font support)
- Full TeX distribution for proper font rendering and bilingual typesetting

## Project Structure

### Main LaTeX Documents
- `hidden-words.tex` - The Hidden Words bilingual edition
- `seven-valleys.tex` - The Seven Valleys text
- `memorize.tex` - Memorization-focused formatting
- `rashh-i-ama.tex` - Rashḥ-i-'Amá text
- `saeed.tex` - Additional sacred text

### Supporting Files
- `hidden-words-glossary.tex` - Glossary for Persian/Arabic terms
- `bahai.bib` - Bibliography file for citations
- `template.tex` - Base template for documents
- `fill.el` - Emacs configuration for text filling

### Auto-generated Files
- `auto/` directory contains Emacs-generated configuration files for each document

### Data Files
- `.txt` files contain source text in various languages (Persian, English)
- `.tsv` files contain structured word data

## Key Features

1. **Bilingual typesetting** - Documents display Persian/Arabic alongside English translations
2. **Diacritical marks** - Proper rendering of Persian/Arabic diacriticals for pronunciation
3. **Memorization aids** - Special formatting to help with text memorization
4. **Glossaries** - Definitions for uncommon Persian/Arabic words

## Working with LaTeX

When modifying or creating new documents:
- Use XeLaTeX for proper Unicode and font support
- Maintain the existing bilingual formatting patterns
- Preserve diacritical accuracy in Persian/Arabic text
- Follow the structure established in existing `.tex` files
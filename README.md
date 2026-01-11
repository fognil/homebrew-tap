# Homebrew Tap

Personal Homebrew tap for [hazenill](https://github.com/hazenill).

## Installation

```bash
brew tap hazenill/tap
brew install neatcli
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| [neatcli](https://github.com/hazenill/neatcli) | A smart CLI tool to organize and clean up messy directories |

## Usage

```bash
# Organize files by type
neatcli organize ~/Downloads --by-type --execute

# Find duplicates
neatcli duplicates ~/Downloads

# Clean old files
neatcli clean ~/Downloads --older-than 30d --execute

# Watch and auto-organize
neatcli watch ~/Downloads --auto
```

## More Info

See the [neatcli repository](https://github.com/hazenill/neatcli) for full documentation.

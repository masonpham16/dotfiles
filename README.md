# dotfiles

My Vim setup: gruvbox colors, relative line numbers, fuzzy file finding, and project-wide search, installed with one command.

## Install

```bash
git clone https://github.com/masonpham16/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

The script:

1. Links `~/.vimrc` to the `vimrc` in this repo
2. Installs [vim-plug](https://github.com/junegunn/vim-plug)
3. Installs the plugins (gruvbox, fzf, fzf.vim)

> **Heads up:** this replaces any existing `~/.vimrc`. Back yours up first if you want to keep it:
> `cp ~/.vimrc ~/.vimrc.backup`

### Requirements

- `vim`, `git`, `curl`
- [`ripgrep`](https://github.com/BurntSushi/ripgrep) for project-wide search (`Space f`)
  - macOS: `brew install ripgrep`
  - Ubuntu/Debian: `sudo apt install ripgrep`

The fzf plugin runs fzf's own installer, which adds shell key bindings (like `Ctrl-R` history search) to your `.bashrc` / `.zshrc`.

## Key bindings

The leader key is **Space**.

| Keys | What it does |
|---|---|
| `Space Space` | Fuzzy-find a file in the current folder |
| `Space f` | Search for text across all files |
| `Space d` | Dark background |
| `Space l` | Light background |
| `Esc Esc` | Clear search highlights |

## What's in the vimrc

**Layout**
- Relative line numbers, with the real number shown on the current line, which makes jumps like `5j` easy
- Current line highlighted
- Matching brackets highlighted
- Gruvbox color scheme, dark by default

**Editing**
- Tabs are real tab characters, 8 columns wide (Linux kernel / OS-class style)
- Smart auto-indent
- Mouse support

**Search**
- Highlights matches as you type

**Quiet**
- No beeping or screen flashing

**Comment highlighting**

These comment tags stand out in bold color:

```c
// TODO: shows up green
/* TODO: block comments too */
// FIXME: shows up red
// HIGHLIGHT: shows up green
```

## Updating

Edit `~/.vimrc` (it points into this repo), then:

```bash
cd ~/dotfiles && git commit -am "Update vimrc" && git push
```

On other machines:

```bash
cd ~/dotfiles && git pull
```

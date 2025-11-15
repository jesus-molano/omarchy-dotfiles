# Omarchy Dotfiles

My personal Omarchy Linux configuration with vim-like keybindings and hyper key setup.

## Author

- **Jesus Molano** ([@jesus-molano](https://github.com/jesus-molano))
- Email: jessumolano@gmail.com

## Features

### 🎯 Vim-like Navigation (ALT + hjkl)

All window management follows vim keybindings using ALT modifier:

- **Focus**: `ALT + h/j/k/l` - Move focus between windows
- **Move**: `ALT + SHIFT + h/j/k/l` - Move windows
- **Resize**: `ALT + CTRL + h/j/k/l` - Resize windows
- **Workspaces**: `ALT + 1-9` - Switch workspaces
- **Move to Workspace**: `ALT + SHIFT + 1-9` - Move window to workspace
- **Toggle Float**: `ALT + F` - Toggle floating window
- **Maximize**: `ALT + M` - Maximize window
- **Fullscreen**: `ALT + SHIFT + F` - Fullscreen window
- **Mouse Move**: `ALT + Left Click + Drag` - Move window with mouse
- **Mouse Resize**: `ALT + Right Click + Drag` - Resize window with mouse

### ⚡ Hyper Key (Caps Lock)

Caps Lock configured with `keyd`:
- **Tap**: Acts as Escape
- **Hold**: Acts as Hyper Key (CTRL + ALT + SUPER)

#### Hyper Key Bindings (CAPS + key):

- `CAPS + c` - Editor (Code/Neovim)
- `CAPS + Enter` - Terminal (Ghostty)
- `CAPS + b` - Browser
- `CAPS + e` - File Manager (Explorer)
- `CAPS + f` - Figma
- `CAPS + m` - YouTube Music
- `CAPS + e` - Email
- `CAPS + t` - Activity Monitor (btop)
- `CAPS + a` - Claude
- `CAPS + SHIFT + a` - ChatGPT
- `CAPS + y` - YouTube
- `CAPS + g` - Signal
- `CAPS + o` - Obsidian
- `CAPS + d` - Discord

### 🚀 Launchers & Keyboard

- `ALT + SPACE` - Application launcher (Walker)
- `ALT + SHIFT + SPACE` - Omarchy menu
- `SUPER + SPACE` - **Switch keyboard layout** (ES ⟷ US) with notification

### 🖥️ Multi-Monitor Support

- `ALT + Arrow Keys` - Focus different monitor
- `ALT + CTRL + Arrow Keys` - Move workspace to different monitor

## Components

This dotfiles repository includes configurations for:

- **Hyprland** - Tiling Wayland compositor
- **Neovim/LazyVim** - Text editor with fullstack development setup
  - TypeScript, React, Next.js, Astro, Tailwind, Prisma
  - Supermaven AI autocomplete (FREE, 1M token context)
  - Complete LSP setup via Mason
  - See [FULLSTACK-SETUP.md](nvim/FULLSTACK-SETUP.md)
- **Ghostty** - GPU-accelerated terminal with vim-style split navigation
  - Optimized for Claude Code + Neovim workflow
  - See [CLAUDE-CODE-WORKFLOW.md](CLAUDE-CODE-WORKFLOW.md)
- **Walker** - Application launcher
- **keyd** - Key remapping daemon
- **btop** - System monitor
- **lazygit** - Git UI
- **fastfetch** - System info
- And more...

## Installation

### Prerequisites

Install Omarchy first:
```bash
curl -sL https://omarchy.org/install | bash
```

Install keyd:
```bash
yay -S keyd
# or
paru -S keyd
```

### Setup

1. Clone this repository:
```bash
git clone https://github.com/jesus-molano/omarchy-dotfiles.git
```

2. Copy configurations to `~/.config/`:
```bash
cp -r omarchy-dotfiles/* ~/.config/
```

3. Configure keyd (requires sudo):
```bash
sudo cp keyd/default.conf /etc/keyd/default.conf
sudo systemctl enable --now keyd
sudo keyd reload
```

4. Reload Hyprland:
```bash
# Press SUPER + SHIFT + R
# or logout and login again
```

## Configuration Files

```
~/.config/
├── hypr/              # Hyprland configuration
│   ├── hyprland.conf  # Main config
│   ├── bindings.conf  # Custom keybindings
│   ├── input.conf     # Input devices
│   └── ...
├── nvim/              # Neovim/LazyVim
├── ghostty/           # Ghostty terminal
├── walker/            # Walker launcher
├── omarchy/           # Omarchy theme
└── ...
```

## keyd Configuration

The keyd configuration at `/etc/keyd/default.conf`:

```conf
[ids]
*

[main]
capslock = overload(hyper, esc)

[hyper:C-A-M]
b = C-A-M-b
enter = C-A-M-enter
c = C-A-M-c
# ... etc
```

## 💻 Fullstack Development Setup

### Neovim/LazyVim Configuration

Complete setup for modern web development:

**Languages & Frameworks:**
- TypeScript/JavaScript with vtsls (faster LSP)
- React, Next.js (JSX/TSX support)
- Astro framework
- Tailwind CSS with IntelliSense
- Prisma ORM
- HTML, CSS, JSON

**AI-Powered Coding:**
- **Supermaven** - FREE AI autocomplete with 1M token context
  - Faster than GitHub Copilot
  - Understands your entire codebase
  - Activate with `:SupermavenUseFree` in Neovim

**Tools Auto-installed:**
- Prettier (formatting)
- ESLint (linting)
- Emmet (HTML expansion)
- Tailwind class sorter

📖 **Full documentation:** [nvim/FULLSTACK-SETUP.md](nvim/FULLSTACK-SETUP.md)

### Claude Code Integration

Work with AI without leaving the terminal:

**3-Pane Ghostty Layout:**
```
┌──────────────┬───────────┐
│ Claude Code  │  Neovim   │
├──────────────┴───────────┤
│      Terminal            │
└──────────────────────────┘
```

**Vim-style Navigation:**
- `Ctrl+H/J/K/L` - Jump between panes instantly
- `Super+Shift+→` - Create right split
- `Super+Shift+↓` - Create bottom split

📖 **Workflow guide:** [CLAUDE-CODE-WORKFLOW.md](CLAUDE-CODE-WORKFLOW.md)

## 🚀 Quick Start for Developers

1. **Open Ghostty**
2. **Create splits**: `Super+Shift+→` (right), `Super+Shift+↓` (bottom)
3. **Start Claude Code**: `claude-code` (left pane)
4. **Open Neovim**: `nvim` (right pane)
5. **Navigate with** `Ctrl+hjkl` between panes
6. **AI autocomplete** works automatically in Neovim with Supermaven

## Credits

- [Omarchy](https://omarchy.org) - by DHH (David Heinemeier Hansson)
- [Hyprland](https://hyprland.org) - by vaxry
- [keyd](https://github.com/rvaiya/keyd) - by rvaiya
- [LazyVim](https://www.lazyvim.org) - by folke
- [Supermaven](https://supermaven.com) - AI autocomplete
- [Ghostty](https://ghostty.org) - Terminal emulator

## License

MIT License - Feel free to use and modify as you wish.

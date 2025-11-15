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
- `CAPS + f` - File Manager
- `CAPS + m` - YouTube Music
- `CAPS + e` - Email
- `CAPS + t` - Activity Monitor (btop)
- `CAPS + a` - Claude
- `CAPS + SHIFT + a` - ChatGPT
- `CAPS + y` - YouTube
- `CAPS + g` - Signal
- `CAPS + o` - Obsidian
- `CAPS + d` - Docker (lazydocker)

### 🚀 Launchers

- `SUPER + SPACE` - Application launcher (Walker)
- `SUPER + ALT + SPACE` - Omarchy menu

### 🖥️ Multi-Monitor Support

- `ALT + Arrow Keys` - Focus different monitor
- `ALT + CTRL + Arrow Keys` - Move workspace to different monitor

## Components

This dotfiles repository includes configurations for:

- **Hyprland** - Tiling Wayland compositor
- **Neovim/LazyVim** - Text editor
- **Ghostty** - Terminal emulator
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

## Credits

- [Omarchy](https://omarchy.org) - by DHH (David Heinemeier Hansson)
- [Hyprland](https://hyprland.org) - by vaxry
- [keyd](https://github.com/rvaiya/keyd) - by rvaiya
- [LazyVim](https://www.lazyvim.org) - by folke

## License

MIT License - Feel free to use and modify as you wish.

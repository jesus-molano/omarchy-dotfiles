# 🤖 Claude Code + Neovim + Ghostty Workflow

Complete guide to using Claude Code alongside Neovim in Ghostty terminal with vim-style navigation.

## 🎯 Why This Setup?

✅ **Claude Code in terminal** - Not embedded in Neovim buffer
✅ **Side-by-side layout** - See both at once
✅ **Vim-style navigation** - Ctrl+hjkl between panes
✅ **No mouse needed** - Pure keyboard workflow
✅ **Keep your Neovim config** - No need to change editors

## 📐 Recommended Layout

```
┌─────────────────────────┬──────────────────────────┐
│                         │                          │
│   Claude Code CLI       │      Neovim              │
│   (AI Assistant)        │      (Editor)            │
│                         │                          │
│                         │                          │
├─────────────────────────┴──────────────────────────┤
│              Terminal (Commands)                    │
└─────────────────────────────────────────────────────┘
```

## 🚀 Setup Steps

### 1. Install Claude Code CLI

```bash
# If you have Claude Code Max subscription
npm install -g @anthropic-ai/claude-code
```

Or follow [Claude Code docs](https://docs.anthropic.com/claude-code)

### 2. Create the Layout in Ghostty

1. Open Ghostty terminal
2. Press `SUPER + D` to create a right split (for Neovim)
3. Press `SUPER + SHIFT + D` to create a bottom split (for terminal)

You now have 3 panes!

### 3. Start Applications

**Left pane (Claude Code):**
```bash
claude-code
```

**Right pane (Neovim):**
```bash
nvim
```

**Bottom pane (Terminal):**
```bash
# Ready for git, npm, etc.
```

## ⌨️ Ghostty Keybindings

### Split Management

- `SUPER + D` - Create right split
- `SUPER + SHIFT + D` - Create bottom split
- `SUPER + W` - Close current split

### Vim-Style Navigation (Instant!)

- `CTRL + H` - Go to left pane
- `CTRL + L` - Go to right pane
- `CTRL + J` - Go to bottom pane
- `CTRL + K` - Go to top pane

**No mouse, no window switching needed!**

### Split Resizing

- `SUPER + SHIFT + H` - Resize left
- `SUPER + SHIFT + L` - Resize right
- `SUPER + SHIFT + J` - Resize down
- `SUPER + SHIFT + K` - Resize up

### Tab Management

- `SUPER + T` - New tab
- `SUPER + 1-5` - Switch to tab 1-5

## 💡 Workflow Tips

### 1. Keep Files in Sync

When Claude Code modifies files that are open in Neovim:
- Neovim will show a warning that the file changed
- Press `:e` to reload the file
- Or set `autoread` in Neovim to reload automatically

**Add to `~/.config/nvim/lua/config/options.lua`:**
```lua
vim.opt.autoread = true
```

### 2. Use Git Worktrees

For working on multiple features with Claude:

```bash
# Create a worktree for each feature
git worktree add ../feature-1 feature-1
git worktree add ../feature-2 feature-2

# Open different Ghostty tabs for each
```

### 3. Terminal Commands

Use the bottom pane for:
- `git status` / `git commit` / `git push`
- `npm run dev` - Start dev server
- `npm test` - Run tests
- `pnpm install` - Install dependencies

### 4. Claude Code Best Practices

**Good prompts:**
```
Help me add authentication to this Next.js app using NextAuth.js

Refactor this React component to use hooks instead of class components

Add Tailwind classes to make this responsive
```

**With context:**
```
Look at src/components/Button.tsx and create a variant that has an icon on the left
```

## 🎨 Customization

### Save Your Layout

Create a shell script `~/claude-workspace.sh`:

```bash
#!/bin/bash
# Open Ghostty with perfect Claude Code layout

ghostty &
sleep 1

# You can automate split creation with shell commands if needed
# Or just manually create splits once and Ghostty remembers per project
```

### Auto-reload Files in Neovim

Add to `~/.config/nvim/lua/config/autocmds.lua`:

```lua
-- Auto-reload files when changed externally (by Claude Code)
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  callback = function()
    vim.cmd("checktime")
  end,
})
```

## 🔄 Alternative: Use Tmux

If you prefer tmux for session management:

```bash
# Create a tmux session
tmux new -s dev

# Split window
Ctrl+b %  # Vertical split
Ctrl+b "  # Horizontal split

# Navigate with vim keys (if configured)
Ctrl+b h/j/k/l
```

But **Ghostty is faster and more native** on Linux!

## 📊 Comparison: Claude Code in Terminal vs Neovim Buffer

| Feature | Terminal (Recommended) | Neovim Buffer |
|---------|----------------------|---------------|
| **Speed** | ✅ Native, fast | ⚠️ Plugin overhead |
| **Updates** | ✅ Always latest | ⚠️ Depends on plugin |
| **Layout** | ✅ See both at once | ❌ Switches buffer |
| **File Sync** | ✅ External reload | ✅ Native |
| **Navigation** | ✅ Ctrl+hjkl | ✅ Native vim |

## 🐛 Troubleshooting

### Ctrl+H not working (conflicts with Neovim)?

If Ctrl+H is mapped in Neovim, the Ghostty binding takes precedence when you're NOT focused on Neovim.

Solution: Use different keys or unmap Ctrl+H in Neovim:

```lua
-- In ~/.config/nvim/lua/config/keymaps.lua
vim.keymap.del("n", "<C-h>")
```

### Split navigation not working?

Make sure you're using Ghostty's latest version and the keybindings are in `~/.config/ghostty/config`.

Check with:
```bash
cat ~/.config/ghostty/config | grep "ctrl+h"
```

### Claude Code not starting?

Check if you have the CLI installed:
```bash
which claude-code
```

If not found, reinstall:
```bash
npm install -g @anthropic-ai/claude-code
```

## 🎓 Learn More

- [Ghostty Documentation](https://ghostty.org/docs)
- [Claude Code Docs](https://docs.anthropic.com/claude-code)
- [Daniel Miessler's Workflow](https://danielmiessler.com/blog/claude-code-neovim-ghostty-integration)

---

**Pro tip:** Once you get used to Ctrl+hjkl navigation between panes, you'll never want to use a mouse again! 🚀

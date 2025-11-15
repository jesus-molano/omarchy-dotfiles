# 🚀 Quick Start Guide - Neovim Fullstack Setup

## First Time Setup (5 minutes)

### 1. Install Language Servers & Tools

Open Neovim:
```bash
nvim
```

LazyVim will automatically:
- Download all plugins
- Install Supermaven
- Install Mason
- Download LSP servers in background

### 2. Activate Supermaven (FREE AI)

After Neovim opens:
```vim
:SupermavenUseFree
```

Press `q` to close any popups, then run the command.

### 3. Wait for LSP Installation

Check installation progress:
```vim
:Mason
```

You should see these being installed:
- ✓ vtsls (TypeScript)
- ✓ tailwindcss-language-server
- ✓ astro-language-server
- ✓ prisma-language-server
- ✓ prettier
- ✓ eslint-lsp

**Tip:** Press `g?` in Mason to see help.

### 4. Restart Neovim

Close and reopen Neovim:
```bash
# Close with
:qa

# Reopen
nvim
```

## ✅ Verify Everything Works

### Check Supermaven
```vim
:SupermavenStatus
```

Should show: `✓ Running`

### Check LSP
Open a TypeScript file:
```bash
nvim test.ts
```

Type some code - you should see:
- ✅ Autocomplete suggestions (from Supermaven)
- ✅ Type hints
- ✅ Error diagnostics

### Check Prettier
Save a file with `<leader>w` - it should auto-format.

Or manually:
```vim
:Format
```

## 🎨 Configure Your Project

### TypeScript/React Project

Create these files in your project root:

**`.prettierrc`**
```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5"
}
```

**.eslintrc.json**
```json
{
  "extends": ["next/core-web-vitals"],
  "rules": {}
}
```

**tsconfig.json** (if using TypeScript)
```json
{
  "compilerOptions": {
    "target": "ES2020",
    "module": "ESNext",
    "jsx": "react-jsx",
    "strict": true
  }
}
```

### Tailwind Project

Create `tailwind.config.js`:
```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

### Prisma Project

Your `.prisma` files will automatically have:
- Syntax highlighting
- LSP support
- Auto-formatting

## 🔧 Essential Keybindings

### File Navigation
- `<leader>ff` - Find files
- `<leader>fg` - Search in files (grep)
- `<leader>fb` - Find buffers
- `<leader>e` - Toggle file explorer

### LSP
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>cr` - Rename symbol
- `<leader>cf` - Format file

### Editing
- `gcc` - Comment line
- `gc` (visual) - Comment selection
- `<leader>/` - Search in buffer

### Supermaven AI
- `Tab` - Accept suggestion
- `<C-]>` - Next suggestion
- `<C-[>` - Previous suggestion

## 🐛 Common Issues

### "Module not found" errors

Make sure your project has `node_modules`:
```bash
npm install
# or
pnpm install
```

Then restart LSP:
```vim
:LspRestart
```

### Prettier not formatting

Check if Prettier is configured:
```bash
# In your project
ls .prettierrc
```

If missing, create it (see above).

### Tailwind colors not showing

Install the colorizer plugin (already done):
```vim
:Lazy
```

Search for "colorizer" - should show as loaded.

### Supermaven not suggesting

1. Check status: `:SupermavenStatus`
2. If not running: `:SupermavenRestart`
3. Still issues? Run: `:SupermavenUseFree` again

## 📚 Next Steps

1. **Read full docs:**
   - [FULLSTACK-SETUP.md](FULLSTACK-SETUP.md) - All features
   - [CLAUDE-CODE-WORKFLOW.md](../CLAUDE-CODE-WORKFLOW.md) - AI workflow

2. **Customize:**
   - Edit `~/.config/nvim/lua/plugins/*.lua`
   - Add more LSPs in `mason-tools.lua`
   - Add more LazyVim extras with `:LazyExtras`

3. **Learn LazyVim:**
   - Press `<leader>` and wait - you'll see all keybindings
   - Visit [lazyvim.org](https://lazyvim.org)

## 🎉 You're Ready!

Start coding with:
- **AI autocomplete** from Supermaven
- **Full TypeScript/React support**
- **Tailwind IntelliSense**
- **Automatic formatting**
- **Error checking**

Happy coding! 🚀

# 🚀 Fullstack Development Setup with LazyVim

Complete setup for modern fullstack development with React, Next.js, TypeScript, Astro, Tailwind, Prisma, and AI-powered coding.

## 🎯 Stack Supported

- **Frontend**: React, Next.js, Astro
- **Styling**: Tailwind CSS, CSS, HTML
- **Language**: TypeScript, JavaScript
- **Database**: Prisma ORM
- **Tooling**: ESLint, Prettier, Emmet

## 🤖 AI Coding Assistant

### Supermaven (FREE)

**Best free AI autocomplete** with 1 million token context window.

#### Setup

1. After opening Neovim, it will download Supermaven automatically
2. Run `:SupermavenUseFree` to activate the free tier
3. Start coding - autocomplete suggestions will appear as you type

#### Features

- **Ultra-fast completions** - Faster than GitHub Copilot
- **1M token context** - Understands your entire codebase
- **100% free** for individual use
- **Works offline** after initial setup

#### Keybindings

- `Tab` - Accept suggestion
- `Ctrl+]` - Next suggestion
- `Ctrl+[` - Previous suggestion

## 📦 Installed LazyVim Extras

All these are automatically configured:

```lua
{ import = "lazyvim.plugins.extras.lang.typescript" }  -- TypeScript/React/Next.js
{ import = "lazyvim.plugins.extras.lang.json" }        -- JSON
{ import = "lazyvim.plugins.extras.lang.tailwind" }    -- Tailwind CSS
{ import = "lazyvim.plugins.extras.lang.astro" }       -- Astro
{ import = "lazyvim.plugins.extras.lang.markdown" }    -- Markdown
{ import = "lazyvim.plugins.extras.linting.eslint" }   -- ESLint
{ import = "lazyvim.plugins.extras.formatting.prettier" } -- Prettier
{ import = "lazyvim.plugins.extras.ai.supermaven" }    -- AI autocomplete
{ import = "lazyvim.plugins.extras.test.core" }        -- Testing
```

## 🛠️ LSP Servers & Tools (Auto-installed via Mason)

### Language Servers

- `vtsls` - TypeScript/JavaScript (faster than tsserver)
- `tailwindcss-language-server` - Tailwind CSS
- `astro-language-server` - Astro
- `prisma-language-server` - Prisma
- `html-lsp` - HTML
- `css-lsp` - CSS
- `json-lsp` - JSON
- `emmet-ls` - Emmet abbreviations

### Formatters

- `prettier` / `prettierd` - JavaScript/TypeScript/CSS/HTML
- `stylua` - Lua
- `rustywind` - Tailwind class sorter

### Linters

- `eslint-lsp` / `eslint_d` - ESLint

## 🎨 Key Features

### TypeScript

- **vtsls** instead of tsserver (better performance)
- Auto-imports
- Organize imports on save
- Type checking
- Rename refactoring
- Go to definition/references

### Tailwind CSS

- **IntelliSense** - Class name completions
- **Color preview** - See colors inline
- **Class sorting** - Automatic with rustywind
- **Hover docs** - See CSS properties on hover

### React/Next.js

- **JSX/TSX support** - Full syntax highlighting
- **Component imports** - Auto-import components
- **Emmet** - HTML shortcuts in JSX
- **Auto-closing tags** - `nvim-ts-autotag`

### Prisma

- **Schema highlighting** - Syntax highlighting for .prisma files
- **LSP support** - Autocomplete and validation
- **Format on save** - Auto-format Prisma schemas

### Astro

- **Full language support** - Astro components
- **TypeScript integration** - Type checking in Astro files
- **Prettier formatting** - Format Astro files

## 📋 Common Tasks

### Format Code

- `<leader>cf` - Format current file (Prettier)
- Auto-formats on save (configured by default)

### Linting

- `<leader>cl` - Show lint errors (ESLint)
- Auto-fixes on save when possible

### LSP Actions

- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>cr` - Rename symbol

### File Explorer

- `<leader>e` - Toggle file explorer (mini.files)

### Search

- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers

## 🔧 Customization

### Add More LSP Servers

Edit `~/.config/nvim/lua/plugins/mason-tools.lua`:

```lua
ensure_installed = {
  "your-language-server",
}
```

### Enable More LazyVim Extras

Run `:LazyExtras` and select extras to enable.

Or add to `~/.config/nvim/lua/plugins/fullstack-extras.lua`:

```lua
{ import = "lazyvim.plugins.extras.lang.python" },
```

### Configure Prettier

Create `.prettierrc` in your project:

```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5"
}
```

### Configure ESLint

Create `.eslintrc.json` in your project:

```json
{
  "extends": ["next/core-web-vitals"]
}
```

## 🐛 Troubleshooting

### LSP not working?

Run `:LspInfo` to see if LSP is attached.

If not attached:
1. Run `:Mason` and check if the server is installed
2. Restart Neovim
3. Run `:checkhealth` to diagnose issues

### Supermaven not suggesting?

1. Run `:SupermavenStatus`
2. If not activated, run `:SupermavenUseFree`
3. Restart Neovim

### Prettier not formatting?

1. Check if Prettier is installed: `:Mason`
2. Check your project has a `.prettierrc` config
3. Run `:LazyHealth` to check for conflicts

## 📚 Learn More

- [LazyVim Docs](https://lazyvim.org)
- [Supermaven](https://supermaven.com)
- [TypeScript LSP](https://github.com/yioneko/vtsls)
- [Tailwind CSS LSP](https://github.com/tailwindlabs/tailwindcss-intellisense)

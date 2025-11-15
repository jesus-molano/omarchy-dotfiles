-- Mason tools for Fullstack Development
-- Ensures all necessary LSPs, formatters, and linters are installed

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP Servers
        "typescript-language-server", -- TypeScript/JavaScript
        "vtsls", -- Better TypeScript LSP (used by LazyVim)
        "tailwindcss-language-server", -- Tailwind CSS
        "astro-language-server", -- Astro
        "prisma-language-server", -- Prisma
        "html-lsp", -- HTML
        "css-lsp", -- CSS
        "json-lsp", -- JSON
        "emmet-ls", -- Emmet

        -- Formatters
        "prettier", -- JavaScript/TypeScript/CSS/HTML formatter
        "prettierd", -- Faster Prettier daemon
        "stylua", -- Lua formatter

        -- Linters
        "eslint-lsp", -- ESLint
        "eslint_d", -- Faster ESLint daemon

        -- Additional Tools
        "rustywind", -- Tailwind class sorter
      },
    },
  },
}

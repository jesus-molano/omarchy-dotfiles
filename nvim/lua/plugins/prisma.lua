-- Prisma LSP configuration
-- Since LazyVim doesn't have official Prisma extra, we configure it manually

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        prismals = {
          -- Prisma Language Server settings
          settings = {
            prisma = {
              prismaFmtBinPath = "",
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prisma-language-server", -- Prisma LSP
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "prisma", -- Prisma syntax highlighting
      },
    },
  },
}

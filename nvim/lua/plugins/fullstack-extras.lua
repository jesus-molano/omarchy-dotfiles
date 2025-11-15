-- LazyVim Extras for Fullstack Development
-- React, Next.js, TypeScript, Tailwind, Astro, Prisma, etc.

return {
  -- Import LazyVim language extras
  { import = "lazyvim.plugins.extras.lang.typescript" }, -- TypeScript, React, Next.js (uses vtsls)
  { import = "lazyvim.plugins.extras.lang.json" }, -- JSON support
  { import = "lazyvim.plugins.extras.lang.tailwind" }, -- Tailwind CSS
  { import = "lazyvim.plugins.extras.lang.astro" }, -- Astro framework
  { import = "lazyvim.plugins.extras.lang.markdown" }, -- Markdown

  -- Linting and Formatting
  { import = "lazyvim.plugins.extras.linting.eslint" }, -- ESLint
  { import = "lazyvim.plugins.extras.formatting.prettier" }, -- Prettier

  -- AI Coding Assistant (Supermaven - FREE)
  { import = "lazyvim.plugins.extras.ai.supermaven" }, -- Free AI autocomplete with 1M token context

  -- Testing
  { import = "lazyvim.plugins.extras.test.core" }, -- Testing support

  -- UI Enhancements
  { import = "lazyvim.plugins.extras.ui.mini-animate" }, -- Smooth animations
  { import = "lazyvim.plugins.extras.editor.mini-files" }, -- File explorer

  -- Git
  { import = "lazyvim.plugins.extras.util.mini-hipatterns" }, -- Highlight patterns
}

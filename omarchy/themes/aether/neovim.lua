return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#130C1B", -- Default background
                base01 = "#463954", -- Lighter background (status bars)
                base02 = "#130C1B", -- Selection background
                base03 = "#463954", -- Comments, invisibles
                base04 = "#DF5B5C", -- Dark foreground
                base05 = "#f1a4a5", -- Default foreground
                base06 = "#f1a4a5", -- Light foreground
                base07 = "#DF5B5C", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#d25756", -- Variables, errors, red
                base09 = "#e99c9b", -- Integers, constants, orange
                base0A = "#e47962", -- Classes, types, yellow
                base0B = "#7d8eba", -- Strings, green
                base0C = "#aa9cd8", -- Support, regex, cyan
                base0D = "#9287cf", -- Functions, keywords, blue
                base0E = "#ce96cf", -- Keywords, storage, magenta
                base0F = "#f5baad", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

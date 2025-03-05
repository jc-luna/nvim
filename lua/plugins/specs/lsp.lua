return {
    "neovim/nvim-lspconfig",
    event = { "BufRead", "BufNewFile" },
    config = require("plugins.configs.lsp.main")
}

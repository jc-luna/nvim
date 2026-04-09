vim.keymap.set("n", "<Left>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Right>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Up>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Down>", "<Nop>", {noremap = true})

local telebuilt = require("telescope.builtin")
vim.keymap.set("n", "<A-f>", telebuilt.live_grep, {noremap = true})
vim.keymap.set("n", "<A-F>", telebuilt.find_files, {noremap = true})

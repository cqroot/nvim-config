local utils = require("utils")

utils.load_modules(
    {
        "core",
        "plugins",
        "lang"
    }
)

vim.cmd("colorscheme " .. "dracula")

vim.api.nvim_exec([[
autocmd BufNewFile  *.py     0r ~/.config/nvim/templates/skeleton.py
]], true)

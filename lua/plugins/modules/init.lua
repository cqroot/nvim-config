local utils = require("utils")

utils.load_modules(
    {
        "plugins.modules.filemanager",
        "plugins.modules.lspconfig",
        "plugins.modules.completion",
        "plugins.modules.commenter",
        "plugins.modules.statusbar",
        "plugins.modules.treesitter"
    }
)

-- indent_blankline
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

require("gitsigns").setup()
require("colorizer").setup()

-- formatter
vim.api.nvim_exec(
    [[
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END
]],
    true
)

-- telescope
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = require("telescope.actions").close
            }
        }
    }
}

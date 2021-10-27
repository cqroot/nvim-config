local cmp = require "cmp"

cmp.setup(
    {
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
        mapping = {
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<C-e>"] = cmp.mapping.close(),
            ["<Tab>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true
            }
            -- ["<Tab>"] = function(fallback)
            --     if vim.fn.pumvisible() == 1 then
            --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
            --     elseif require("luasnip").expand_or_jumpable() then
            --         vim.fn.feedkeys(
            --             vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
            --             ""
            --         )
            --     else
            --         fallback()
            --     end
            -- end,
            -- ["<S-Tab>"] = function(fallback)
            --     if vim.fn.pumvisible() == 1 then
            --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
            --     elseif require("luasnip").jumpable(-1) then
            --         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
            --     else
            --         fallback()
            --     end
            -- end
        },
        sources = {
            {name = "nvim_lsp"},
            {name = "vsnip"},
            {name = "buffer"}
        }
    }
)

require("nvim-autopairs").setup({})
require("nvim-autopairs.completion.cmp").setup(
    {
        map_cr = true,
        map_complete = true
    }
)

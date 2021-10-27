-- lsp
-- npm install -g pyright
require "lspconfig".pyright.setup {}

-- neoformat
vim.g.neoformat_python_black = {
    exe = "black",
    stdin = 1,
    args = {"-l 79", "-q", "-"}
}
vim.g.neoformat_enabled_python = {"black", "yapf"}

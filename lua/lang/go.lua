-- lsp
-- GO111MODULE=on go get golang.org/x/tools/gopls@latest
require "lspconfig".gopls.setup {}

-- neoformat
vim.g.neoformat_enabled_go = {"gofmt"}

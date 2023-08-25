require("mason").setup()
require("mason-lspconfig").setup({
})

local on_attach = function(_, _)

	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup{
	on_attach = on_attach
}



local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local servers = { "pyright", "gopls", "clangd", "rust_analyzer", "tsserver", "cssls", "html", "svelte", "pyright" }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end

require("mason").setup()

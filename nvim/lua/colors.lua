vim.cmd([[set termguicolors]])
vim.cmd([[set background=dark]])
vim.cmd([[colorscheme zenbones]])

local function wc()
	return tostring(vim.fn.wordcount().words)
end

require("lualine").setup({
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { wc },
		lualine_z = { "location" },
	},
})

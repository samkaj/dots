local api = vim.api
local builtin = require("telescope.builtin")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fr", function()
	vim.cmd("vsplit")
	vim.cmd("Ex")
end)
vim.keymap.set("n", "<leader>fe", function()
	vim.cmd("Ex")
end)
vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Search for file
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- Search for token
vim.keymap.set("n", "<leader>p", function()
	vim.cmd("Neoformat")
end)
api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	callback = function()
		vim.cmd("Neoformat")
	end,
})

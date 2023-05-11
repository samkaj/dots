-- require("github-theme").setup()
-- require("no-clown-fiesta").setup({
-- 	transparent = true, -- Enable this to disable the bg color
-- 	styles = {
-- 		-- You can set any of the style values specified for `:h nvim_set_hl`
-- 		comments = {},
-- 		keywords = {},
-- 		functions = {},
-- 		variables = {},
-- 		type = { bold = true },
-- 		lsp = { underline = true },
-- 	},
-- })
-- vim.cmd([[colorscheme no-clown-fiesta]])
-- require("onedark").setup({
-- 	transparent = true,
-- })
require("kanagawa").setup({
	theme = "dragon",
	transparent = true,
	overrides = function(colors)
		local theme = colors.theme
		return {
			TelescopeTitle = { fg = theme.ui.special, bold = true },
			TelescopePromptNormal = { bg = theme.ui.bg_p1 },
			TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
			TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
			TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
			TelescopePreviewNormal = { bg = theme.ui.bg_dim },
			TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
		}
	end,
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
				},
			},
		},
	},
})
require("kanagawa").load("dragon")
--vim.cmd("colorscheme zenbones")
--vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
require("lualine").setup()

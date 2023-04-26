local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")
	-- Telescope fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  -- Highlighting
  use("nvim-treesitter/nvim-treesitter")

	-- Complete brackets and stuff
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- GitHub colors
	-- use({
	-- 	"projekt0n/github-nvim-theme",
	-- 	tag = "v0.0.7",
	-- 	config = function()
	-- 		require("github-theme").setup({
	-- 			transparent = true,
	-- 		})
	-- 	end,
	-- })

	use({ "aktersnurra/no-clown-fiesta.nvim" })

	-- Git stuff
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")

	-- LSP stuff
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("mfussenegger/nvim-jdtls")

	use({
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	})

	-- Auto completions
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("natebosch/vim-lsc")
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin

	-- Formatters
	use("sbdchd/neoformat")
	use({
		"prettier/vim-prettier",
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)

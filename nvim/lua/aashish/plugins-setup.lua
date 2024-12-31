local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- plugin that many other plugins use
	"nvim-lua/plenary.nvim",

	{
		"marko-cerovac/material.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("material").setup({})
			vim.g.material_style = "deep ocean"
			vim.cmd.colorscheme("material")
		end,
	},

	-- allow for quickly add quotes parenthesis and others arround things
	"tpope/vim-surround",

	-- allow replacing words with what is copied "vim-scripts/ReplaceWithRegister",
	-- makes commenting easier
	"numToStr/Comment.nvim",

	-- file tree
	"nvim-tree/nvim-tree.lua",

	-- icons
	"nvim-tree/nvim-web-devicons",

	-- status line
	"nvim-lualine/lualine.nvim",

	-- fuzzy finding telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

	-- snippets
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- managing and installing LSP servers
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- configuring LSP servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
	}, -- enhanced lsp uis
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- code formatting and linting
	"nvimtools/none-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	-- auto closing
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	{
		"windwp/nvim-ts-autotag", -- autoclose tags
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	-- Tabs (this was so needed)
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},

	-- tmux
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
			})
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},

	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {
			enabled = false,
		},
	},

	{
		"folke/zen-mode.nvim",
		config = function()
			vim.api.nvim_create_autocmd({ "VimEnter", "BufReadPost" }, {
				callback = function()
					local zen_mode = require("zen-mode")
					zen_mode.open()
				end,
			})
		end,
	},

	{
		"echasnovski/mini.indentscope",
		version = "*",
		config = function()
			require("mini.indentscope").setup({
				draw = {
					delay = 10,
				},
				symbol = "┃",
			})
		end,
	},
}
local opts = {}
require("lazy").setup(plugins, opts)

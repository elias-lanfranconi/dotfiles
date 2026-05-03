vim.pack.add({
	{
		src = "https://github.com/folke/tokyonight.nvim",
		name = "tokyonight",
		version = "main",
	},
	{
		src = "https://github.com/nvim-lualine/lualine.nvim",
		name = "lualine",
		version = "master",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
		name = "nvim-web-devicons",
		version = "master",
	},
	{
		src = "https://github.com/neovim/nvim-lspconfig",
		name = "nvim-lspconfig",
		version = "master",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
		name = "plenary",
		version = "master",
	},
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		name = "telescope",
		version = "master"
	},
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		name = "nvim-treesitter",
		version = "main",
	}
})


require("lualine").setup({
	options = {
		theme = "tokyonight"
	}
})

require("nvim-treesitter").install({
		"c",
		"sql",
		"lua",
		"json",
		"python",
		"javascript",
		"typescript"
	})

require("telescope")

vim.lsp.enable("clangd")

vim.cmd.colorscheme("tokyonight")


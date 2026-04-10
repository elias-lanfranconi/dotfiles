vim.g.mapleader = " "

local tb = require("telescope.builtin")
vim.keymap.set(
	"n", "<leader>cd", vim.cmd.Ex, { desc = "Open netrw explorer" }
)
vim.keymap.set(
	"n", "<leader>ff", tb.find_files, { desc = "Telescope find files" }
)
vim.keymap.set(
	"n", "<leader>fg", tb.live_grep, { desc = "Telescope live grep" }
)
vim.keymap.set(
	"n", "<leader>fb", tb.buffers, { desc = "Telescope buffers" }
)
vim.keymap.set(
	"n", "<leader>fh", tb.help_tags, { desc = "Telescope help tags" }
)
vim.keymap.set(
	"n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end
)
vim.keymap.set(
	"n", "<leader>rf", 
	function()
		vim.lsp.buf.code_action({
			context = { only = {"source.fixAll.ruff"} },
			apply = true,
		}) 
	end
)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>c", vim.lsp.buf.completion)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)


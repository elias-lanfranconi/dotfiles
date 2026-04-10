vim.env.PATH = vim.fn.expand("~/.local/bin") .. ":" .. vim.env.PATH
require("config.options")
require("config.plugins")
require("config.keybinds")


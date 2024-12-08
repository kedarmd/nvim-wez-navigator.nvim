local merge_tables = require("helpers.merger")
local navigator = require("helpers.navigators")
local keymap = vim.keymap

local M = {}

-- Default keybindings
local defaults = {
	move_right = "<C-l>",
	move_left = "<C-h>",
	move_up = "<C-k>",
	move_down = "<C-j>",
}

-- Setup
-- @param user_opts table<"move_right" | "move_left" | "move_up" | "move_down", string>
function M.setup(user_opts)
	local config = merge_tables(defaults, user_opts)
	keymap.set("n", config.move_right, navigator.move_right, { desc = "Move to Rigth Window" })
	keymap.set("n", config.move_left, navigator.move_left, { desc = "Mover to Left Window" })
	keymap.set("n", config.move_up, navigator.move_up, { desc = "Move to Up Window" })
	keymap.set("n", config.move_down, navigator.move_down, { desc = "Move to Down Window" })
end

return M

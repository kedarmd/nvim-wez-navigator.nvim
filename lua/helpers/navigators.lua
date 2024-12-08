---nvim_wez_navigator
---@param key 'l' | 'h' | 'j' | 'k'
---@return nil
local function nvim_wez_navigator(key)
	local map = {
		l = "Right",
		h = "Left",
		j = "Down",
		k = "Up",
	}
	local command = string.format("wincmd %s", key)
	local current_win = vim.api.nvim_get_current_win()
	vim.cmd(command)
	if vim.api.nvim_get_current_win() == current_win then
		local current_termial = vim.fn.getenv("TERM_PROGRAM")
		if current_termial == "WezTerm" then
			local wez_command = string.format("wezterm cli activate-pane-direction %s", map[key])
			vim.fn.system(wez_command)
		else
			vim.notify("Not Running in WezTerm")
		end
	end
end

local function move_right()
	nvim_wez_navigator("l")
end

local function move_left()
	nvim_wez_navigator("h")
end

local function move_up()
	nvim_wez_navigator("k")
end

local function move_down()
	nvim_wez_navigator("j")
end

return {
	move_right = move_right,
	move_left = move_left,
	move_up = move_up,
	move_down = move_down,
}

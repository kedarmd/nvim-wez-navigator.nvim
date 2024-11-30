# nvim-wez-navigator

`nvim-wez-navigator` is a Lua-based Neovim plugin designed to seamlessly integrate Neovim with WezTerm, allowing for easy navigation between the Neovim editor and WezTerm panes.

## Features

- Effortless pane navigation between Neovim and WezTerm.
- Integration with `wezterm`'s Lua configuration for enhanced flexibility.
- Streamlined workflow for users who rely on both Neovim and WezTerm.

## Installation

You can install `nvim-wez-navigator` using your preferred plugin manager. For example, with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require('lazy').setup({
  'kedarmd/nvim-wez-navigator',
})
```sh

Make sure to install [nvim-wez-navigator](https://github.com/kedarmd/nvim-wez-navigator) plugin for wezterm.
Run following command to install nvim-wez-navigator
git clone https://github.com/kedarmd/nvim-wez-navigator.git ~/.config/wezterm/plugins/nvim-wez-navigator/
```
Add following line `~/.wezterm.lua`
```lua
local nvim_wez_navigator = require("plugins.nvim-wez-navigator")

--- config.keys = {...}
for _, keybinding in ipairs(nvim_wez_navigator.keybindings()) do
	table.insert(config.keys, keybinding)
end
```


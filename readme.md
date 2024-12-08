# nvim-wez-navigator.nvim

`nvim-wez-navigator` is a Lua-based Neovim plugin designed to seamlessly integrate Neovim with WezTerm, allowing for easy navigation between the Neovim editor and WezTerm panes.

## Features

- Effortless pane navigation between Neovim and WezTerm.
- Integration with `wezterm`'s Lua configuration for enhanced flexibility.
- Streamlined workflow for users who rely on both Neovim and WezTerm.

### Default keybindings
| Key     | Description             |
|:--------|:------------------------|
| `<C-l>` | Move to the right pane  |
| `<C-k>` | Move to the top pane    |
| `<C-j>` | Move to the bottom pane |
| `<C-h>` | Move to the left pane   |

## Installation

You can install `nvim-wez-navigator` using your preferred plugin manager. For example, with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "kedarmd/nvim-wez-navigator.nvim",
  config = function()
    require("nvim-wez-navigator").setup()
  end,
}
```

## Usage
The plugin provides a `setup` function that you can call to configure the plugin. Here's an example of how to use the setup function:
```lua
-- Default keybindings
require("nvim-wez-navigator").setup({
    move_right = "<C-l>", 
    move_up = "<C-k>",
    move_down = "<C-j>",
    move_left = "<C-h>",
})
```
## Additional Setup for Wezterm Config
Make sure to install [nvim-wez-navigator](https://github.com/kedarmd/nvim-wez-navigator) plugin for wezterm.
Run following command to install nvim-wez-navigator
```sh
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


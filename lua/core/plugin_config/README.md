# Markdown Preview Plugin

A zero-dependency markdown preview plugin for your Neovim setup!

## Features

- ✨ Instant toggle between editor and rendered HTML popup modes
- ⚡ Opens separate floating window showing formatted markdown  
- 🔄 Auto-shows preview when opening `.md` files (configurable)  
- 🚰 Zero external dependencies - works with any setup  
- 🎨 Integrates seamlessly with your existing Neovim configuration  

## Installation

The plugin is loaded by default in `init.lua`:

```lua
require("core.plugin_config.markdown-preview")
```

## Usage

### Enable/Disable

To **enable** the plugin (default):
```vim
:echo g:md_preview_enabled == true  -- This should print 1
```

To **disable:**
```vim
let g:md_preview_enabled = false    -- In your init.lua or config file
```

### Add Key Bindings

Add these buffer-local keys to your telescope.lua or main keymaps section:

```lua
-- Toggle between edit/preview modes  
vim.keymap.set("n", "gvp", M.toggle, { desc = "Toggle markdown preview" })
  
-- Open separator view (not connected back to editor)  
vim.keymap.set("n", "gpv", M.open_preview_popup(), { desc = "Open preview popup" })

-- Close popup and return back to editor window only  
vim.keymap.set("n", "<C-/>", M.close, { desc = "Close preview popup" })
```

## Setup API

### Configuration Table

You can customize the plugin's behavior using this configuration:

```lua
require("core.plugin_config.markdown-preview").setup({
  enabled    = true,                        -- Disable via g:md_preview_enabled = false
  
  -- Add custom keys (merged with defaults):
  keys = {
    toggle   = "gvp",                       -- Toggle between edit/preview modes  
    open     = "gpv",                         -- Open new preview popup 
    close    = "<C-/>",                        -- Close and return to editor
  },
})

return M.config
``` 

**Note:** You can override keys via the `keys` table in `.setup()` but it's recommended to add these to your existing keymap configuration section (telescope.lua or main init file) instead of using the config object.

## Documentation

### Toggle Mode Switching

The `toggle` function switches between:
- Editor mode (normal text editing)  
- Preview mode (rendered HTML popup window showing formatted markdown)

Usage: Use your configured keybind (default: `gpv`) while in the markdown file to toggle back and forth.

### Open Popup Separately

Opens a new floating window with the markdown content (not connected back to your main editor for viewing). 

### Close Popup

Closes preview popup returns focus to the normal editor buffer so you can continue editing.

## Credits

Zero dependencies required - Native Neovim only! ✨

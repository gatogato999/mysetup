# Neovim Configuration for Full-Stack Web Development

This repository contains a Neovim configuration tailored for full-stack web development, designed for use with Lazy as the plugin manager. The configuration emphasizes performance, modularity, and ease of extension.

## Features:

- **Lazy Plugin Manager**: Efficient and fast plugin management.
- **Modular Structure**: Separate files for plugins, keymaps, and options for easy maintenance and extension.
- **Performance Optimized**: Configuration settings and plugin choices are geared towards a fast and responsive editing experience.
- **Full-Stack Web Development Focus**: Includes essential plugins and configurations for HTML, CSS, JavaScript/TypeScript, JSON, Lua, and Python development.
- **Popular Plugins Included**:
    - `nvim-treesitter`: For syntax highlighting and structural editing.
    - `vim-surround`: For quickly adding/changing/deleting surrounding pairs.
    - `Comment.nvim`: For easy commenting and uncommenting of code.
    - `lualine.nvim`: A fast and highly customizable statusline.
    - `nvim-lspconfig`: For Language Server Protocol (LSP) integration, providing features like autocompletion, go-to-definition, and code actions.
    - `mason.nvim` and `mason-lspconfig.nvim`: For easy installation and management of LSP servers and other development tools.
    - `nvim-cmp` and `luasnip`: For powerful autocompletion and snippet support.

## Requirements:

- **Neovim**: Version 0.8.0 or higher (recommended: latest stable version).
- **Git**: For cloning the Lazy plugin manager and other plugins.
- **Node.js and npm/yarn**: Required for some LSP servers (e.g., `tsserver`).
- **Python**: Required for some LSP servers (e.g., `pyright`).

## Installation (for Windows 10 PowerShell):

1. **Backup your existing Neovim configuration (if any)**:
   Rename or move your `~/.config/nvim` (Linux/macOS) or `~/AppData/Local/nvim` (Windows) directory.

2. **Clone this repository**:
   ```powershell
   git clone <repository_url> ~/local/nvim
   ```
   (Replace `<repository_url>` with the actual URL of this configuration if it were hosted on GitHub, for example).

3. **Open Neovim**:
   Launch `nvim` from your PowerShell. Lazy will automatically install the plugins.

4. **Run `:MasonInstallAll`**:
   This command will install all the necessary LSP servers and tools configured in `lua/plugins/lspconfig.lua`.

## Configuration Structure:

```
~/local/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins/
│       ├── comment.lua
│       ├── lspconfig.lua
│       ├── lualine.lua
│       ├── surround.lua
│       └── treesitter.lua
└── readme.md
```

- `init.lua`: The main entry point for the Neovim configuration. It loads the core configuration files.
- `lua/config/options.lua`: Contains general Neovim options and settings, including performance optimizations.
- `lua/config/keymaps.lua`: Defines all custom keybindings (remaps).
- `lua/config/lazy.lua`: Sets up the Lazy plugin manager and imports the plugin configurations.
- `lua/plugins/`: This directory contains separate Lua files for each plugin's configuration, making it easy to add, remove, or modify plugins.

## Key Remaps (from `lua/config/keymaps.lua`):

- `<leader>pv`: Open file explorer (`:Ex`)
- `<leader>h`: Disable search highlight (`:nohlsearch`)
- `jk` (in insert mode): Escape
- `J` (in visual mode): Move selected lines down
- `K` (in visual mode): Move selected lines up
- `<ESC>` (in terminal mode): Escape from terminal mode
- `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`: Window navigation
- `<leader>=`, `<leader>-`, `<leader>+`, `<leader>_`: Resize windows
- `<leader>tn`, `<leader>tc`, `<leader>tm`, `<leader>to`: Tab management
- `<leader>bp`, `<leader>bn`, `<leader>bd`: Buffer navigation
- `<C-n>`, `<C-p>`: Quickfix list navigation
- `<leader>ss`: Source current file

## Performance Optimizations:

- `opt.lazyredraw = true`: Prevents redraws during macro execution.
- `opt.synmaxcol = 200`: Limits syntax highlighting to 200 columns for large files.
- `opt.updatetime = 300`: Reduces the delay for `CursorHold` events, improving completion responsiveness.
- `opt.backup = false`, `opt.writebackup = false`, `opt.swapfile = false`: Disables backup and swap files for better performance and cleaner directories.
- Lazy loading of plugins: Plugins are only loaded when needed, significantly improving startup time.

## What was done:

- Created a modular Neovim configuration structure with separate files for options, keymaps, and individual plugins.
- Integrated Lazy as the plugin manager.
- Included essential plugins for full-stack web development, such as `nvim-treesitter`, `nvim-lspconfig` (with `mason.nvim` for LSP server management), `nvim-cmp`, `luasnip`, `vim-surround`, `Comment.nvim`, and `lualine.nvim`.
- Configured performance-oriented options to ensure a fast and efficient Neovim experience.
- Implemented common and useful key remaps, inspired by popular configurations.
- Documented the configuration structure, installation steps, key features, and performance optimizations in this `readme.md` file.



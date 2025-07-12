local opt = vim.opt

-- General UI
opt.number = true               -- Show line numbers
opt.relativenumber = true       -- Show relative line numbers
opt.mouse = 'a'                 -- Enable mouse support
opt.clipboard = 'unnamedplus'   -- Sync with system clipboard
opt.undofile = true             -- Enable persistent undo
opt.ignorecase = true           -- Ignore case in search patterns
opt.smartcase = true            -- Smart case search
opt.hlsearch = false             -- Highlight search results
opt.incsearch = true            -- Incremental search
opt.termguicolors = true        -- Enable true colors
opt.signcolumn = 'yes'          -- Always show the sign column
opt.cmdheight = 1               -- Command line height
opt.updatetime = 50            -- Faster completion (default is 4000)
vim.opt.colorcolumn = "80"
vim.opt.wrap = false

-- Indentation
opt.tabstop = 2                 -- Number of spaces a tab counts for
opt.shiftwidth = 2              -- Number of spaces to use for each step of indentation
opt.expandtab = true            -- Use spaces instead of tabs
opt.autoindent = true           -- Copy indent from current line when starting a new line
opt.smartindent = true          -- Smart auto-indenting

-- Performance
opt.lazyredraw = true           -- Don't redraw while executing macros (for performance)
opt.synmaxcol = 200             -- Max column for syntax highlighting (performance)
opt.inccommand = 'split'        -- Live preview of :s and :global
opt.scrolloff = 8               -- Lines of context around cursor
opt.sidescrolloff = 8           -- Columns of context around cursor

-- coq
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }  -- COQ works best with this
vim.opt.shortmess:append("c")  -- Disable completion messages

-- Netrw (built-in file explorer)
opt.isfname:append("@-@")

-- Conceal (for markdown, etc.)
opt.conceallevel = 0            -- Show concealed text
opt.concealcursor = 'n'         -- Conceal text in normal mode

-- Backups
opt.backup = false              -- Do not create backup files
opt.writebackup = false         -- Do not create backup files
opt.swapfile = false            -- Do not create swap files

-- Other
opt.timeoutlen = 500            -- Time to wait for a mapped sequence to complete (ms)
opt.splitbelow = true           -- New splits open below current window
opt.splitright = true           -- New splits open to the right of current window
opt.showmode = false            -- Don't show mode in command line
opt.showcmd = false             -- Don't show incomplete commands
opt.laststatus = 2              -- Always show statusline
opt.showtabline = 2             -- Always show tabline
opt.pumheight = 10              -- Maximum number of items to show in the popup menu
opt.fileencoding = 'utf-8'      -- File encoding

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- highlight copied text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set leader key to space
vim.g.mapleader = ' '

-- Basic navigation
vim.keymap.set('n', '<leader>e', ':Lexplore<CR>')  -- File explorer
--[[
     Explore directory of current file      *:Explore*
     Horizontal Split & Explore             *:Hexplore*
     Left Explorer Toggle                   *:Lexplore*
     Split&Explore current file's directory *:Sexplore*
     Vertical   Split & Explore             *:Vexplore*
     Tab & Explore                          *:Texplore*
     Return to/from Explorer                *:Rexplore*
]]

--vim.keymap.set('n', '<leader>E' , ':UndotreeShow<CR>')

-- Window management
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize Windows
vim.keymap.set("n", "<C-Left>", "<C-w><")
vim.keymap.set("n", "<C-Right>", "<C-w>>")
vim.keymap.set("n", "<C-Up>", "<C-w>+")
vim.keymap.set("n", "<C-Down>", "<C-w>-")

-- Tab management
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>' )
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>' )
vim.keymap.set('n', '<leader>tm', ':tabmove<CR>' )
vim.keymap.set('n', '<leader>to', ':tabonly<CR>' )

-- Save/quit shortcuts 
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>Q', ':q<CR>')

vim.keymap.set('v', 'J' , ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K' , ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'n' , 'nzzzv')
vim.keymap.set('n', 'N' , 'Nzzzv')

vim.keymap.set('n', 'J' , 'mzJ`z')

vim.keymap.set('x', '<leader>p' , "\"_db")

vim.keymap.set('n', '<C-d>' , '<C-d>zz')
vim.keymap.set('n', '<C-u>' , '<C-u>zz')

-- Split window management
vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })

-- Indentation shortcuts
vim.api.nvim_set_keymap('n', '<leader>i', '>>', { noremap = true, silent = true }) -- Indent right
vim.api.nvim_set_keymap('n', '<leader>I', '<<', { noremap = true, silent = true }) -- Indent left

vim.api.nvim_set_keymap('v', '<leader>i', '>>', { noremap = true, silent = true }) -- Indent right
vim.api.nvim_set_keymap('v', '<leader>I', '<<', { noremap = true, silent = true }) -- Indent left

-- Quickfix list navigation
vim.keymap.set('n', '<C-n>', ':cnext<CR>' )
vim.keymap.set('n', '<C-p>', ':cprev<CR>' )

-- Source current file
vim.keymap.set('n', '<leader>ss', ':source %<CR>' )

vim.api.nvim_set_keymap('n', '<leader>[', ':BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>]', ':BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>D', ':bdelete <CR>', {})


return {
  'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
	file_ignore_patterns = {"node_modules", ".git"},
	vim.api.nvim_set_keymap('n', '<leader>ff','<cmd>Telescope find_files<CR>', { noremap = true, silent = true}); 
  vim.api.nvim_set_keymap('n', '<leader>fg','<cmd>Telescope git_files<CR>', { noremap = true, silent = true })
  },
}

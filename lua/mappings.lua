local map = vim.api.nvim_set_keymap

local opts = {
	noremap = true,
	silent = true
}

-- Set map leader
vim.g.mapleader = ' '

-- Set keymap to open file tree
map('n', '<leader>f', ':NvimTreeToggle<CR>', opts)

-- Set keymaps to move around different buffers.
map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>2', ':BufferGoto 2<CR>', opts)
map('n', '<leader>3', ':BufferGoto 3<CR>', opts)
map('n', '<leader>4', ':BufferGoto 4<CR>', opts)
map('n', '<leader>5', ':BufferGoto 5<CR>', opts)
map('n', '<leader>6', ':BufferGoto 6<CR>', opts)
map('n', '<leader>7', ':BufferGoto 7<CR>', opts)
map('n', '<leader>8', ':BufferGoto 8<CR>', opts)
map('n', '<leader>9', ':BufferGoto 9<CR>', opts)
map('n', '<leader>0', ':BufferLast<CR>', opts)

map('n', '<A-n>', ':BufferNext<CR>', opts)
map('n', '<A-p>', ':BufferPrevious<CR>', opts)

map('n', '<A-c>', ':BufferClose<CR>', opts)

-- Set keymap for terminal.
map('n', '<A-`>', ':split<CR>:terminal<CR>', opts)

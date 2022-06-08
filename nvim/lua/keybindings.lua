local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<C-s>', ':w<CR>', {})

--NERDTree
keymap('n','<C-n>',':NERDTreeToggle<CR>', opts)

--closing brackets
keymap('i', '"', '""<left>', opts)
keymap('i', "'", "''<left>", opts)
keymap('i', '(', '()<left>', opts)
keymap('i', '[', '[]<left>', opts)
keymap('i', '{', '{}<left>', opts)

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- ノーマルモードでのキーマップ
-- Telescope
map('n', '<Leader>ff', '<cmd>Telescope find_files hidden=true no_ignore=true<cr>', opts)
map('n', '<Leader>fg', '<cmd>Telescope live_grep hidden=true no_ignore=true<cr>', opts)
map('n', '<Leader>fb', '<cmd>Telescope buffers hidden=true no_ignore=true<cr>', opts)

-- NvimTree
map('n', '<Leader>b', '<cmd>Neotree<cr>', opts)

-- toggleterm
map('n', '<Leader>t', '<cmd>ToggleTerm size=40 dir=. direction=float name=current-directory<cr>', opts)


map('n', '<Leader>h', '<C-w>h', opts)
map('n', '<Leader>l', '<C-w>l', opts)
map('n', '<Leader>q', ':q', opts)

map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

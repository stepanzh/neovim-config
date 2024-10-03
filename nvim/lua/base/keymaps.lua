-- Leader key
vim.g.mapleader = ' '

local keymap = vim.keymap


-- General keymaps

-- Escape insert mode
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', 'kj', '<ESC>')

-- No highlight
keymap.set('n', '<leader>nh', ':nohl<CR>')

-- Do not copy character to buffer (clipboard) on delete (overriding default behavior)
keymap.set('n', 'x', '"_x')

-- Window split
keymap.set('n', '<leader>sv', ':vsplit<CR>')  -- Vertical split
keymap.set('n', '<leader>sh', ':split<CR>')   -- Horizontal split
keymap.set('n', '<leader>sq', ':close<CR>')   -- Close focused split
keymap.set('n', '<leader>se', '<C-w>=')       -- Make split equal sized (there is no :command for that, a shortcut only)

-- Building commands
-- Call make on mk or km
keymap.set('n', '<leader>mk', ':w<CR>:make<CR>')
keymap.set('n', '<leader>km', ':w<CR>:make<CR>')

-- LaTeX to Unicode input
-- Toggles latex to unicode completion, e.g. \alpha<Tab> becomes α
-- Mnemonic: Unicode
--           ^  ^
-- Required: julia-vim -> julia-vim-L2U
-- TODO: Check that julia-vim is installed.
-- NOTE: Maybe there is a better keymap, as u and c vim defaults for Redo and Change mode.
keymap.set('n', '<leader>uc', ':call LaTeXtoUnicode#Toggle()<CR>')
keymap.set('n', '<leader>uc', ':call LaTeXtoUnicode#Toggle()<CR>')

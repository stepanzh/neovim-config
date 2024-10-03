-- Leader key
vim.g.mapleader = ' '

local keymap = vim.keymap


-- Escape insert mode by jk or kj
keymap.set('i', 'jk', '<ESC>')
keymap.set('i', 'kj', '<ESC>')


-- No highlight
-- Mnemonic: no highlight
--           ^  ^
keymap.set('n', '<leader>nh', ':nohl<CR>')


-- Do not copy character to buffer (clipboard) on delete
-- NOTE: Overrides default behavior.
keymap.set('n', 'x', '"_x')


-- Window split
-- Mnemonics:
--   split vertical
--   split horizontal
--   split quit
--   split equal
--   ^     ^
keymap.set('n', '<leader>sv', ':vsplit<CR>')  -- Vertical split
keymap.set('n', '<leader>sh', ':split<CR>')   -- Horizontal split
keymap.set('n', '<leader>sq', ':close<CR>')   -- Close focused split
keymap.set('n', '<leader>se', '<C-w>=')       -- Make split equal sized (there is no :command for that, a shortcut only)


-- Call make on mk or km
-- Mnemonic: make
--           ^ ^
keymap.set('n', '<leader>mk', ':w<CR>:make<CR>')
keymap.set('n', '<leader>km', ':w<CR>:make<CR>')


-- LaTeX to Unicode input
-- 
-- Toggles latex to unicode completion, e.g. \alpha<Tab> becomes α.
-- Uses julia-vim-L2U (part of julia-vim plugin).
--
-- Mnemonic: Unicode
--           ^  ^
-- TODO: Check that julia-vim is installed.
-- NOTE: See :help julia-vim-L2U for another behavior of completion.
-- NOTE: Maybe there is a better keymap, as u and c vim defaults for Redo and Change mode.
keymap.set('n', '<leader>uc', ':call LaTeXtoUnicode#Toggle()<CR>')
keymap.set('n', '<leader>uc', ':call LaTeXtoUnicode#Toggle()<CR>')

-- After removing old (brewed) python3 this command is necessary.
-- On the right is symlink to actual python3.
vim.g.python3_host_prog = '/usr/local/bin/python3'

require('plugins_setup')  -- Should be called before first stage of packer.

require('base.options')
require('base.colorscheme')
require('base.keymaps')

require('plugins.UltiSnips.plugin_settings')

require('user_commands')

-- List of todos
-- Keymap for Russian keyboard: https://github.com/Wansmer/langmapper.nvim

-- Useful articles
-- Basic: https://habr.com/ru/articles/683054/
-- Basic+: https://habr.com/ru/articles/730970/

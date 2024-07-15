-- nvim user (custom) commands
--
-- Usage:
--   In NORMAL mode type  :  and command name, e.g. :ToggleAppearance
--
-- List of commands
--   ToggleAppearance
--     Toggles between light and dark mode appearances


-- https://gist.github.com/Schniz/5cfc225920486ffa2fb447545b9f6d24
local create_cmd = vim.api.nvim_create_user_command

-- Toggles between light and dark mode appearances
create_cmd('ToggleAppearance', function ()

    -- Seems that most of the colorschemes require to set background first

    -- Toggle background
    if vim.o.background == 'light' then
      vim.cmd('set background=dark')
    else
      vim.cmd('set background=light')
    end

    -- Toggle colorscheme
    -- https://www.reddit.com/r/neovim/comments/m99vtf/how_to_detect_colorscheme_from_lua/
    vim.cmd(string.format('colorscheme %s', vim.g.colors_name))

  end,
  {}
)

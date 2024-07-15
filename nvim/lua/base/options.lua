local opt = vim.opt

-- Line numbers
opt.number = true  -- Display line numbers
opt.relativenumber = true                                 

-- Tabs and indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true    -- Expand tab to spaces
opt.smartindent = true  -- New line will be indented as previous

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true  -- Ignore case while search
opt.smartcase = true   -- Does not ignore case when request is case sensitive, e.g. pAttern
opt.showmatch = true   -- Highlight all search matches

-- Highlight cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = 'light'
opt.signcolumn = 'yes'  -- Show sign column always, this is a column on right with signs

-- Backspace key
opt.backspace = 'indent,eol,start'

-- Clipboard
opt.clipboard:append('unnamedplus')	 -- Use OS clipboard

-- Window split
opt.splitright = true  -- New vertical window split appears right
opt.splitbelow = true  -- New horizontal window split appears below

-- Auto completion
opt.completeopt = 'menuone,noselect'  -- Standard neovim auto completion


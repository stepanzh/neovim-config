# neovim-config

I'm a basic user of [neovim](https://neovim.io/) and here is my config for this charming text editor.
I usually work with Julia, C, LaTeX and Python.

My config is inspired by [Josean Martinez' YouTube video](https://www.youtube.com/watch?v=vdn_pKJUda8).


## Features

- LaTeX snippets based on [Gilles Castel's post](https://castel.dev/post/lecture-notes-1/).
- LaTeX to Unicode completion based on [julia-vim](https://github.com/JuliaEditorSupport/julia-vim), e.g. `C \leftarrow<Tab> \alpha<Tab> A B + \beta<Tab>` becomes `C ← α A B + β C`.
  Activated by `<space>uc`; active by default in Julia files.
- Toggle between light and dark themes for readability during screen sharing by `:ToggleAppearance`.

| Light theme | Dark theme |
:--:|:--:|
|<img src='https://github.com/stepanzh/neovim-config/blob/main/assets/screenshot-light-theme.png' width=512 alt='light theme preview'>|<img src='https://github.com/stepanzh/neovim-config/blob/main/assets/screenshot-dark-theme.png' width=512 alt='dark theme preview'>|


## How to install

> [!NOTE]
> If you want to try out this config, backup (e.g. just rename) your config, clone this repo and add symbolically link with `nvim` folder of this repo.

- Copy `nvim` folder to `~/.config/`, e.g. `~/.config/nvim/`
- Change path to python interpreter in `nvim/init.lua -> vim.g.python3_host_prog` (Tip: use another text editor for this.)
- Install [pynvim](https://github.com/neovim/pynvim) for the Python interpreter from `vim.g.python3_host_prog`
- If copy-paste from operating system (OS) clipboard does not work, install clipboard manager for your OS (e.g. [wl-clipboard](https://github.com/bugaevc/wl-clipboard) for Ubuntu 22.04)

> [!NOTE]
> **At first run**, it is normal to encounter some errors (e.g. "colorscheme not found").
> Normally, packer shall run automatically and install plugins.


## Tested environments

- MacOS 14, iTerm2
- Ubuntu 22.04, built-in Terminal

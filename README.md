# City Lights theme for NeoVim

# EARLY RELEASE. SOMEWHAT BUGGY.

## Known Issues

- Sometimes after updating plugins, theme won't apply to plugin UI elements such as [bufferline.nvim](https://github.com/akinsho/bufferline.nvim). For now, can be fixed by just quitting out of NeoVim and relaunching a few times.
- For some reason even though the theme does literally nothing but change color hex values, it completely breaks neovim's terminal (`:term`)?? Doesn't matter much to me because I just use Tmux anyay, but could be worth noting.
- (This is my first ever publicly released code that was actually designed for anyone other than me to use, it might be pretty rough around the edges in other areas, sorry in advance)

# Description

- Ever feel like other NeoVim themes focus too much on the aesthetics of their color palettes and not enough on making the different colors really actually stand out from each other at a glance? Do you enjoy the vibe of driving around a city at night and getting hypnotized like a moth to all the different-colored pretty lights? If so, city-lights.nvim is the theme for you!

# Extras

- To enable undercurls, add the following to your `options.lua`:

```lua
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

```

- If you are using tmux, add the following to your .tmux.conf to enable undercurls + color:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0

```

# TODO

- Fix Issues outlined above
- Create second version with colors slightly dimmed; we can't all be retina-scorch enjoyers

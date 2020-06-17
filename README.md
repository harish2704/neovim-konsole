## deprecation notice
I no longer use use Neovim+Konsole so, I do not maintain this repo anymore.
Just use [Alacritty](https://github.com/alacritty/alacritty) with necessary configurations . For eg: see [my dot files]( https://github.com/harish2704/dotFiles/blob/master/home/.config/alacritty/alacritty.yml#L503 )


# neovim-konsole

This is a wrapper script and configurations files for running nvim as gui text editor in my Ubunutu desktop.


I tried to avoid most of key-binding limitations of a console vim.
this wrapper enable us to use
* \<C-S\>
* \<C-PageUP\>, \<C-PageDown\>
* \<C-S-PageUp\>, \<C-S-PageDown\>
* Able to map \<CR\> \<C-CR\> \<C-S-CR\> etc..
etc..

Then main reason to choose Konsole terminal emulator is its true-color support and its configurable keybinding mechanism

This repo also contains desktop configuration files and resized icons required for linux desktop environments

## About true color support and cursor shape.

### True color support 

Before [ this ]( https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 ) breaking change,
Truecolor support was working by setting `NVIM_TUI_ENABLE_TRUE_COLOR` environment variable.

Now , it changed to `set termguicolors` vim command.

### Cursor shape

Before [ this ]( https://github.com/neovim/neovim/wiki/Following-HEAD#20160210 ) breaking change,
Cursor shape change was working by 
* Setting `NVIM_TUI_ENABLE_CURSOR_SHAPE` environment variable and,
* executing vim command `let &t_SI = "\<Esc>]50;CursorShape=1\x7" | let &t_SR = "\<Esc>]50;CursorShape=2\x7" | let &t_EI = "\<Esc>]50;CursorShape=0\x7"` inside vim.

Now, it is changed to following vim command
* `set guicursor=n-c:block,i-ci-ve:ver40,r-cr-v:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175`

Neovim uses some environment variables such as `VTE_VERSTION` to detect vte based terminal such as gnome-termnal, `KONSOLE_*` environment variables to detect konsole terminal

Since konsole is not compatible with [ DECSCUSR ]( http://vt100.net/docs/vt510-rm/DECSCUSR ) sequences, nvim talks to konsole in a different way.

if we are running nvim-konsole from gnome-termnal , `unset VTE_VERSTION` is required for proper working of cursor shape. It is done by default by `nvim-konsole` script

## Installation

### Install with [installer-scripts](https://github.com/harish2704/installer-scripts)
`installer-scripts.sh install https://github.com/harish2704/neovim-konsole`

### Install manually
* cd Application_dir;
* `./install.sh`



### Mapping keycodes
Suppose a key binding ( Eg: \<C-CR\>  ) is not able map in console vim.
Then we can fix this in the following way

  * Open any Neovim client which supports that key binding ( Eg: here, I opened Neovim python-client for GTK )
  * enter `:terminal`
  * then, enter `sed -n l`
  * Press your Key binding
  * Now, you can see the corresponding terminal keycode for your shortcut.
  * Now, Edit your Konsole keytab file ( @ $HOME/.kde/share/apps/konsole ) and add an appropriate entry.


### Screen shot
![Screen shot](http://i.giphy.com/l2JInHtGIhatbiuRO.gif "Neovim+Konsole on ubuntu 14.04")


### Related links
* My Neovim config files ( https://github.com/harish2704/dotFiles/blob/master/home/.config/nvim/init.vim )
* A fully configurable file manager called [ SpaceFM ]( http://ignorantguru.github.io/spacefm/ ). Those who like Vim will also like this

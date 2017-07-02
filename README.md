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

True color support for nvim is enabled by default.

Cursor shape will change according to the mode.

Also, Desktop configuration files and resized icons are also included

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

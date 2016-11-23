TO INSTALL:
```
$ sudo apt install vim-gtk3-py2
$ mkdir -p ~/.vim && cd ~/.vim
$ git clone --recursive https://github.com/dasizeman/vim-stuff.git
$ mv .vimrc .gvimrc ~
$ vim
: PluginInstall
: qa
$ cd bundle/YouCompleteMe/
$ ./install.py --clang-completer --gocode-completer
```
Gotchas:

For gocode to work in ycm, you need `$GOROOT` and `$GOPATH` set, as well as `$GOOS`
and `$GOARCH` such that `$GOPATH/pkg/$GOOS_$GOARCH` is where your packages live

Donezo funzo.


TODO:
* See what it would take to replace ctags with gtags, since gtags offer more
  functionality.  Then integate with vim with unite.vim and the unite-gtags
  plugin
* Do documentation of this configuration

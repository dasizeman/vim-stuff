TO INSTALL:
* recursively clone this repo somewhere:
  * $git clone --recursive https://github.com/dasizeman/vim-stuff
* make sure you have a ~/.vim directory
  * $mkdir -p ~/.vim
* cd to the repo you just cloned
  * $cd vim-stuff
* copy the .vimrc to your home directory (THIS WILL OVERWRITE ANY CURRENT .vimrc
  SO BACK IT UP FIRST IF YOU WANT)
  * $cp .vimrc ~
* copy the autoload and bundle directories to your ~/.vim folder
  NOTE: If you already had stuff in your ~/.vim directory you will have to figure
  out what you want to do.  Basically autoload/ just contains the pathogen.vim
  plugin loader, and bundle contains the cloned repos of all the plugins I'm using
  * $cp -r autoload/ bundle/ ~/.vim/

And you should be good to go :)


Things to note:
* Since the configuration opens multiple windows, you have to quit vim with
  * :qa
otherwise it throws a weird error.
* I have now switched to NeoComplete, which means that you need your vim needs
  to be compiled with lua support.  Either figure out how to get a version that
  is, or grab the source and configure the build yourself with this command:
  * ./configure --enable-luainterp --with-luajit --enable-fail-if-missing
* Let me know if you need help with dependencies and whatnot.  If you don't feel
  like compiling vim (which is understandable), you can remove the NeoComplete
  plugin from the bundle/ directory in your vim folder.


TODO:
* See what it would take to replace ctags with gtags, since gtags offer more
  functionality.  Then integate with vim with unite.vim and the unite-gtags
  plugin
* Do documentation of this configuration

TO INSTALL:
* recursively clone this repo somewhere:
 --* $git clone --recursive https://github.com/dasizeman/vim-stuff
* make sure you have a ~/.vim directory
 --* $mkdir -p ~/.vim
* cd to the repo you just cloned
 --* $cd vim-stuff
* copy the .vimrc to your home directory (THIS WILL OVERWRITE ANY CURRENT .vimrc
  SO BACK IT UP FIRST IF YOU WANT)
 --* $cp .vimrc ~
* copy the autoload and bundle directories to your ~/.vim folder
  NOTE: If you already had stuff in your ~/.vim directory you will have to figure
  out what you want to do.  Basically autoload/ just contains the pathogen.vim
  plugin loader, and bundle contains the cloned repos of all the plugins I'm using
--* $cp -r autoload/ bundle/ ~/.vim/

And you should be good to go :)


I will add some notes about the plugins later, for now, the only issue is:
-* Since the configuration opens multiple windows, you have to quit vim with
    :wqa
  otherwise it throws a weird error.

After way too many years, this is my attempt to formalize and finally decide on a minimal set of portable vim configurations that I can use across all the servers in my life.

### Requirements
 - Vundle must be installed first: https://github.com/gmarik/Vundle.vim

### Installation

  1. Clone the repo somewhere, anywhere.

    `git clone https://github.com/jimbocoder/.vimmyJimmy.git ~/src/jimbocoder/.vimmyJimmy`

  2. Replace or create your `~/.vimrc` file, with the single line:

    `source ~/src/jimbocoder/.vimmyJimmy/vimrc`

    Or you could symlink instead, I guess:

    `ln -fs ~/src/jimbocoder/.vimmyJimmy/vimrc ~/.vimrc` *This will overwrite your existing .vimrc!*

  3. Either build ctrlp-cmatcher (a faster filter program), or remove it from `conf.d/ctrlp.vim`

    ```bash
    apt-get install python-dev
    # or: yum install python-devel
    # or: brew install python
    pushd ~/.vim/bundle/ctrlp-cmatcher && ./install.sh && popd
    ```

  4. Set up vim-instant-markdown if you like to edit markdown files.

    ```bash
    sudo apt install ruby-dev npm
    sudo gem install pygments.rb redcarpet
    sudo npm install -g instant-markdown-d
    ```

### Customizations

```
This is a list of directories which will be searched for runtime
	files:
	  filetype.vim	filetypes by file name |new-filetype|
	  scripts.vim	filetypes by file contents |new-filetype-scripts|
	  autoload/	automatically loaded scripts |autoload-functions|
	  colors/	color scheme files |:colorscheme|
	  compiler/	compiler files |:compiler|
	  doc/		documentation |write-local-help|
	  ftplugin/	filetype plugins |write-filetype-plugin|
	  indent/	indent scripts |indent-expression|
	  keymap/	key mapping files |mbyte-keymap|
	  lang/		menu translations |:menutrans|
	  menu.vim	GUI menus |menu.vim|
	  plugin/	plugin scripts |write-plugin|
	  print/	files for printing |postscript-print-encoding|
	  spell/	spell checking files |spell|
	  syntax/	syntax files |mysyntaxfile|
	  tutor/
```

After way too many years, this is my attempt to formalize and finally decide on a minimal set of portable vim configurations that I can use across all the servers in my life.

### Requirements
 - https://github.com/gmarik/Vundle.vim
 - `suan/vim-instant-markdown` is included but requires a couple things first:
   1. `sudo gem install pygments.rb redcarpet`
   1. `sudo npm install -g instant-markdown-d`

### Installation

  1. Clone the repo somewhere, anywhere.  I simply keep it right in my `$HOME` alongside other dotfiles:

    `git clone https://github.com/jimbocoder/.vimmyJimmy.git ~/.vimmyJimmy`

  2.  Replace or create your `~/.vimrc` file, with the single line:

    `source ~/.vimmyJimmy/vimrc`

    Or you could symlink instead, I guess:

    `ln -fs ~/.vimmyJimmy/vimrc ~/.vimrc` *This will overwrite your existing .vimrc!*

  3.  Either build ctrlp-cmatcher (a faster filter program), or remove it from `conf.d/ctrlp.vim`
 
    ```bash
apt-get install python-dev
# or: yum install python-devel
# or: brew install python
pushd ~/.vim/bundle/ctrlp-cmatcher && ./install.sh && popd
```

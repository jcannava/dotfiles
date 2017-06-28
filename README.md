## SETUP
Run the following command:

`$ git clone https://github.com/jcannava/dotfiles ~/.dotfiles && ~/.dotfiles/deploy.sh`

To install the vim colorscheme:

```
mkdir -p ~/.vim/pack/themes/opt

git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8`
```

To install vim pathogen:

```
mkdir -p ~/.vim/autoload ~/.vim/bundle

wget -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.con/tpope/vim-pathogen/master/autoload/pathogen.vim
```

To install configured vim plugins:

```
git clone https://github.com/nvie/vim-flake8 ~/.vim/bundle/vim-flake8

git clone https://github.com/fatih/vim-go ~/.vim/bundle/vim-go

git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
```

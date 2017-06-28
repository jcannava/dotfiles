## SETUP
Run the following command:

`$ git clone https://github.com/jcannava/dotfiles ~/.dotfiles && ~/.dotfiles/deploy.sh`

To install the vim colorschemes and plugins:
    mkdir -p ~/.vim/pack/themes/opt && git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
    mkdir -p ~/.vim/autoload ~/.vim/bundle
    wget -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.con/tpope/vim-pathogen/master/autoload/pathogen.vim
    git clone https://github.com/nvie/vim-flake8 ~/.vim/bundle/vim-flake8
    git clone https://github.com/fatih/vim-go ~/.vim/bundle/vim-go
    git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive

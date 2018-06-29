# install zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# initialize vim setting
cd ~/;
mkdir .vim;
cd .vim;
mkdir bundle;
cd bundle;

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
sudo apt-get install clang

git clone https://github.com/VundleVim/Vundle.vim.git;
git clone https://github.com/tomasr/molokai.git;
git clone https://github.com/vim-airline/vim-airline.git;
git clone https://github.com/vim-airline/vim-airline-themes.git;
git clone https://github.com/scrooloose/nerdtree.git;
git clone https://github.com/Raimondi/delimitMate.git;
git clone https://github.com/vim-syntastic/syntastic;
git clone https://github.com/Valloric/YouCompleteMe;

# initilize server setting
sudo apt-get install openssh-server
sudo /etc/init.d/ssh restart
sudo netstat -ntlp | grep ssh

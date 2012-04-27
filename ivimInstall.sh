ivim_endpath = "$HOME/.ivim-1"
spf13_vim_endpath = "$ivim_endpath/spf13-vim"

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

# Welcome Message
echo "***********************************************************************\n"
echo "*  Thanks for installing ivim                                         *\n"
echo "*  @author: Blithe Xu [http://ijavascripter.com]                      *\n"
echo "*  ivim is based on spf13-vim[https://github.com/spf13/spf13-vim]     *\n"
echo "***********************************************************************\n"

# Backup old vim stuff
echo "\n*  Backing up current vim stuff...                                    *\n"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv $i $i.$today; done

echo "\n*  Cloning ivim...                                                    *\n"
git clone --recursive -b 1.0 https://github.com/blithexu/ivim $ivim_endpath
ln -s $ivim_endpath/.vimrc.local $HOME/.vimrc.local                        #ivim's custom Settings
ln -s $ivim_endpath/.vimrc.bundles.local $HOME/.vimrc.bundles.local        #ivim's custom Bundles

echo "\n*  Cloning spf13-vim...                                               *\n"
git clone --recursive -b 3.0 http://github.com/spf13/spf13-vim.git $endpath
mkdir -p $spf13_vim_endpath/.vim/bundle
ln -s $spf13_vim_endpath/.vimrc $HOME/.vimrc
ln -s $spf13_vim_endpath/.vim $HOME/.vim

echo "Installing Vundle"
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "installing plugins using Vundle"
vim +BundleInstall! +BundleClean +q


echo "***********************************************************************\n"
echo "\n*  Finish, now you can try it!                                      *\n"
echo "***********************************************************************\n"

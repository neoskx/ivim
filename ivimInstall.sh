##################################################################
# ivim install shell for mac os and linux
# version: 1.0
# @author: Blithe Xu [ijavascripter.com]
##################################################################

ivim_endpath="$HOME/.ivim" #define ivim's path
spf13_vim_endpath="$ivim_endpath/spf13-vim" #define spf13-vim's path
backup_endpath="$ivim_endpath/backuplastvim" #define the backup folder - 'backuplastvim' to store last version's vim files

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

echo "\n ivim's path: $ivim_endpath\n"
echo "\n spf13-vim's path: $spf13_vim_endpath\n"

echo "\n* Remove old files                                                   *\n"

echo "Removed ivim's folder, path: $ivim_endpath\n"
rm -rf $ivim_endpath

echo "Removed following files: .vim, .vimrc, .vimrc.bundles.local, .vimrc.local\n"
rm -rf $HOME/.vimrc
rm -rf $HOME/.vim
rm -rf $HOME/.vimrc.bundles.local
rm -rf $HOME/.vimrc.local

echo "\n*  Cloning ivim...                                                    *\n"
git clone --recursive https://github.com/blithexu/ivim $ivim_endpath
ln -s $ivim_endpath/.vimrc.local $HOME/.vimrc.local                        #ivim's custom Settings
ln -s $ivim_endpath/.vimrc.bundles.local $HOME/.vimrc.bundles.local        #ivim's custom Bundles

# Backup old vim stuff
echo "\n*  Backing up current vim stuff...                                    *\n"
today=`date +%Y%m%d`
mkdir -p $backup_endpath
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv $i $backup_endpath/$i.$today; done

echo "\n*  Cloning spf13-vim...                                               *\n"
git clone --recursive -b 3.0 http://github.com/spf13/spf13-vim.git $spf13_vim_endpath
mkdir -p $spf13_vim_endpath/.vim/bundle
ln -s $spf13_vim_endpath/.vimrc $HOME/.vimrc
ln -s $spf13_vim_endpath/.vim $HOME/.vim

echo "Installing Vundle"
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "Installing plugins using Vundle"
vim +BundleInstall! +BundleClean +q


echo "***********************************************************************\n"
echo "*    Finished, now you can try it!                                    *\n"
echo "***********************************************************************\n"

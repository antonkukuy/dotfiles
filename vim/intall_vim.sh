#!/bin/sh

sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-common vim-gui-common gvim vim-nox

# Get the compile-dependencies of vim
#sudo apt-get build-dep vim

sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev mercurial libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev git

sudo mkdir /usr/include/lua5.1/include
sudo ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include
 
cd ~
git clone https://github.com/vim/vim.git
cd vim/src
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
            --enable-cscope 

make VIMRUNTIMEDIR=/usr/share/vim/vim74

sudo apt-get install checkinstall
cd vim
sudo checkinstall


sudo mkdir /usr/share/vim
sudo mkdir /usr/share/vim/vim74
sudo cp -fr runtime/* /usr/share/vim/vim74/

#Set vim as your default editor with 
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

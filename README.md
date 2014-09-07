<div style="color:red;">
目前不建议使用<a href="https://github.com/shaoke/ivim/blob/master/ivimInstall.sh">ivimInstall.sh</a>进行安装
</div><br/>

这是我自己的vim配置文件，基于[spf-13-vim](https://github.com/spf13/spf13-vim). 主要是添加了一些我自己觉得很有用的plugin，然后修改了一下快捷键，最主要的目的是为了我自己使用，如果对你也有些用处那真是再好不过了。


### 安装(Mac OSX)
下面讲的是Mac系统下的安装，没试过在windows系统下的安装。

#### 安装所需要的Dependencies

1. 安装[MacVim](https://code.google.com/p/macvim/)。我安装的是Installer版本
2. 安装ruby和python。Mac系统是自带ruby和python的，如果你的系统没有，那么就安装一下吧
3. 安装[NodeJS](http://nodejs.org)。有几个插件需要用到NodeJS的npm命令
4. 安装[HomeBrew](http://brew.sh)。我觉得这是Mac系统下非常好用的工具，用来安装Mac系统缺失的包，类似于Linux系统下得apt-get
5. 安装[js-beautify](https://github.com/beautify-web/js-beautify)。使用**js-beautify**来format JavaScript, HTML和CSS。你可以用这个命令进行安装`npm -g install js-beautify`，如果出现错误，那很可能就是权限的问题，可以加上`sudo`
6. 安装[ctags](http://ctags.sourceforge.net)，ctags可以生成一个函数定义列表，方便你在代码中查找函数。你可以用这个命令安装`brew install ctags`。安装完成后，你可以用`which ctags`查找安装路径
7. 安装[CMake](http://www.cmake.org), CMake是一个跨平台，开源的build系统。你可以使用如下命令安装`brew install cmake`
8. 安装[Mercurial](http://mercurial.selenic.com/wiki/Mercurial)，你可以去这个网站下载安装包[http://mercurial.berkwood.com](http://mercurial.berkwood.com)
8. 安装最新版本的vim，由于YouCompleteMe需要最新版本的vim。

#### 安装
1. 下载或者checkout [ivim]()。用如下命令就行，`git clone https://github.com/shaoke/ivim.git`。假如你把ivim文件夹放在如下路径 - `/Users/UX/MyGithub/ivim`，里面应该有.vimrc.bundles.local，.vimrc.local等文件
2. 在你当前用户的根目录（假如是`/Users/UX`）下创建如下文件链接。
    
    * .vimrc.bundles.local。在这里可以添加plugins。可用如下命令创建`ln -s /Users/UX/MyGithub/ivim/.vimrc.bundles.local ~/.vimrc.bundles.local`
    * .vimrc.before.local。可以设置一些变量覆盖spf13-vim中得设置。 `ln -s /Users/UX/MyGithub/ivim/.vimrc.before.local ~/.vimrc.before.local`
    *  .vimrc.local。可用如下命令`ln -s /Users/UX/MyGithub/ivim/.vimrc.local ~/.vimrc.local`
3. 安装[spf-13-vim](https://github.com/spf13/spf13-vim)。你可以用这么命令进行安和更新`curl https://j.mp/spf13-vim3 -L -o - | sh`，
 
经过以上步骤就安装完成了，你可以打开的MacVim或者直接用vim来试用了。

### 常用快捷键

* `Ctrl+e`, `,e`：显示file explorer - NERDTree
* `Shift+H`, `Shift+L`：切换tab
* 

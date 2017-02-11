export LANG=ja_JP.UTF-8
export ZDOTDIR=$HOME/.config/zsh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
CACHE=$HOME/tmp/.cache
if [ ! -e $CACHE/vim ]; then
	mkdir -p $CACHE/vim
fi
if [ ! -e $CACHE/zsh ]; then
	mkdir $CACHE/zsh
fi
if [ ! -e $CACHE/google-chrome ]; then
	mkdir $CACHE/google-chrome
fi
if [ ! -e $CACHE/thumbnails ]; then
	mkdir $CACHE/thumbnails
fi


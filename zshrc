# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/kaito/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/kaito/.oh-my-zsh"

# Plugins
plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
export STEAM_COMPAT_DATA_PATH=$HOME/proton
wal -i ~/Wallpapers-Full/Wallpapers/wall.jpg >/dev/null 2>&1

command_not_found_handler () {
    echo "$(tput setaf 1 && tput bold)ERROR:$(tput sgr0 && tput sgr0) Command not found."
}

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/Jake/.rvm/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew cap composer git osx sublime svn vagrant zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# include additional aliases
source $HOME/.aliases

# ZSH syntax highlighting
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Set default user.
# Will remove from prompt if matches current user
DEFAULT_USER="Jake"

# Update $PATH if we have a local ~/.path file
if [ -f $HOME/.path ]
then
    source $HOME/.path
fi


# WP-CLI autocomplete
if [ -f $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash ]
then
	autoload bashcompinit
	bashcompinit
	source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash
fi


# colors
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"



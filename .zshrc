# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Update $PATH if we have a local ~/.path file
if [ -f $HOME/.path ]
then
     source $HOME/.path
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="agnoster"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(brew capistrano composer git osx sublime svn vagrant laravel gem zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

# ZSH syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Set default user.
# Will remove from prompt if matches current user
DEFAULT_USER="Jake"


# include additional aliases
source $HOME/.aliases

# WP-CLI autocomplete
if [ -f $HOME/.wp-cli/vendor/wp-cli/utils/wp-completion.bash ]
then
       autoload bashcompinit
       bashcompinit
       source $HOME/.wp-cli/vendor/wp-cli/utils/wp-completion.bash
fi
           
# colors
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Jake/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Jake/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Jake/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Jake/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

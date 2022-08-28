# aliases
source ~/.alias

# editor
export EDITOR='vim'

### OH MY ZSH -------------------------------------

# path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# plugins
plugins=( zsh-autosuggestions sudo web-search copypath copybuffer dirhistory history jsontools )

# autocomplete show hidden files
setopt globdots

# theme
ZSH_THEME="zoe-fino-time"

# hyphen-insensitive completion, _ and - interchangeable
HYPHEN_INSENSITIVE="false"

# auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# command auto-correction
ENABLE_CORRECTION="true"

# stamp format in history command output
HIST_STAMPS="dd/mm/yyyy"

source $ZSH/oh-my-zsh.sh

# additional plugin folders
ZSH_CUSTOM="$HOME/.oh-my-zsh/my-plugins"

### CONDA -------------------------------------------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


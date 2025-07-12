# aliases
source ~/.alias

# paths
source ~/.path

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

# dont add to prompt
export CONDA_CHANGEPS1=false
conda config --set changeps1 false

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

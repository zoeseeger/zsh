# fino-time.zsh-theme

# ls colours
export CLICOLOR=1
export LSCOLORS=ExbxCxDxBxegedabagaced

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

# turn off conda default prompt - actually only needs to be set once and then restart shell

# with date and time
#PROMPT="%{$ps_conda_top%}╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info) %D - %*
#%{$ps_conda_bottom%}╰─\$(virtualenv_info)\$(prompt_char) "

# without date and time
#PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info)
#╰─\$(virtualenv_info)\$(prompt_char) "

function venv_info {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo "%{$fg[green]%}‹${VIRTUAL_ENV:t}›%{$reset_color%}"
    fi
}

function conda_info {
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        echo "%{$fg[green]%}‹${CONDA_DEFAULT_ENV}›%{$reset_color%}"
    fi
}
local venv='$(venv_info)'
local conda='$(conda_info)'

PROMPT="%{$fg[white]%}╭─%{$reset_color%}%{$FG[040]%}%n%{$reset_color%}  %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info) ${conda} ${venv}
%{$fg[white]%}╰─%{$reset_color%}\$(virtualenv_info)\$(prompt_char) "


ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
ZSH_THEME_RUBY_PROMPT_PREFIX=" %{$FG[239]%}using%{$FG[243]%} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

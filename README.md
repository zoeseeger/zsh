# Description
Zsh shell setup using oh-my-zsh

### Theme
zoe-fino-time: A modified fino-time where the prompt displays the conda env instead of the time and date. 
LSCOLORS are also defined. 

### Plugins

- zsh-autosuggestions
  - autocompletion suggestions on the command line
- sudo 
  - if command denied from 'NOT super-user', esc twice to autocomplete command prefixed with sudo   
- web-search
  - web search from the terminal using `ddg <text>` or `google <text>` 
- copypath
  - `copypath` copies path to clipboard
  - can also be used followed by a filename 
- copybuffer
  - `Ctrl+o` copies command line text to clipboard
- dirhistory
  - `Alt+left`: previous dir
  - `Alt+right`: reverts Alt+left (similar to redo)
  - `Alt+up`: parent dir
- history
  - `h`: prints history
  - `hs <text>`: search history
  - `hsi <text>`: case in-sensitive search
- jsontools
  - `<call_to_api> | pp_json` pretty print json output

# Installation

### Dependencies

- oh-my-zsh (https://github.com/ohmyzsh)
- zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)

### Install

- Install oh-my-zsh in home dir
- Install zsh-autosuggestions in `.oh-my-zsh/custom/plugins`

  
    git clone https://github.com/zoeseeger/zsh
    cd ~/.config
    git clone https://github.com/zoeseeger/mc-v4.8
    rm -r ~/.config/mc
    mv mc-v4.8 mc

    mkdir -p ~/.local/share/mc/skins
    cp ~/.config/mc/skins/*ini ~/.local/share/mc/skins/
    mc

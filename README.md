# dotfiles

## Requirements

|package|description|
|---|---|
|i3|tiling window manager|
|ly|display manager (greeter)|
|kitty|terminal emulator|
|picom|compositor|
|feh|image viewer (also sets wallpapers)|
|dunst|notification daemon|
|ranger|CLI file manager|
|thunar|GUI file manager|
|rofi|alternative D-menu|
|flameshot|screenshot utility|
|git||
|polybar|customizable status bar|

## Installation

### Configs

Place content of `.config` into `~/.config/`

Reloading i3 is done via `$mode+shift+r` after changing the config

### Switching shell

```sh
pacman -S fish

# locate where fish is at (supposedly at /sbin/fish)
which fish 

# add path to shells list
sudo vim /etc/shells

# change shell
chsh -s /sbin/fish

# logout to accept changes
```

Shell config is at ~/.config/fish/config.fish

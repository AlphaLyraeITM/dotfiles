# dotfiles

For Xorg Arch + i3-wm

ss

## Requirements

### Mandatory
|Package|Description|
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
|xorg-xrandr|display server utility for managing displays|

### Optional
|Package|Description|
|---|---|
|xorg-xgamma|adjust gamma corrections of a display|
|postgresql||

## Installation

### Configs

Place content of `.config` into `~/.config/`

Reloading i3 is done via `$mode+shift+r` after changing the config

### Configuring helper for AUR

Go to [Yay repo](https://github.com/Jguer/yay). Then follow instructions there:

```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Localization

Check this official arch [manual](https://wiki.archlinux.org/title/Localization_(%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9)) or [this](https://wiki.archlinux.org/title/Xorg/Keyboard_configuration)

### Postgres

```sh
pacman -S postgresql

# switch to postgres user - it will be created automatically
sudo -u postgres

# initialize db cluster
initdb -D /var/lib/postgres/data

# use
psql
```

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

# My dotfiles for AwesomeWM on Ubuntu</h1>

### Some info about this environment

- **WM:** Awesome
- **OS:** Ubuntu 22.04
- **Terminal:** kitty
- **Shell:** zsh
- **Editor:** vscode
- **Browser:** Firefox
- **File Manager:** Thunar
- **APP Launcher:** Rofi
- **Development Environment:** Node.JS

## Setup

### Installing the dependencies

```sh
>   sudo apt-get install awesome kitty neofetch node rofi zsh  
    sudo snap install code lsd
```

### Swap your default shell to zsh

> If you want to configure on root account

```sh
>   sudo chsh -s /bin/zsh %your-user%
    sudo chsh -s /bin/zsh root
```

Then copy the content of the file .zshrc to your user ~/.zshrc and link to root

```sh
>   sudo ln -s ~/.zshrc /root/.zshrc
```

> If you want to configure only on local user

```sh
>   sudo chsh -s /bin/zsh %your-user%
```

Then copy the content of the file .zshrc to your user ~/.zshrc
> To be continued ^^

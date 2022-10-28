# My dotfiles for awesome on ubuntu</h1>

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

> if you start on a new Ubuntu installation

### Installing the dependencies

```sh
>   sudo apt-get install awesome kitty neofetch node rofi zsh  
    sudo snap install code lsd
```

### Swap your default shell to zsh

> You can configure only for local user, then ignore the lines including "root"

```sh
>   sudo chsh -s /bin/zsh %your-user%
    sudo chsh -s /bin/zsh root
```

Then copy the content of the file .zshrc to your user ~/.zshrc

```sh
>   sudo ln -s ~/.zshrc /root/.zshrc 
```

> To be continued ^^

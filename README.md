# My dotfiles for AwesomeWM on Ubuntu</h1>

## Some info about this environment

- **WM:** [Awesome](https://github.com/awesomeWM/awesome)
- **OS:** [Ubuntu](https://ubuntu.com/) 22.04
- **Terminal:** [kitty](https://sw.kovidgoyal.net/kitty/)
- **Shell:** [zsh](https://www.zsh.org/)
- **Editor:** [vscode](https://github.com/microsoft/vscode)
- **APP Launcher:** [rofi](https://github.com/davatorium/rofi)
- **Development Environment:** [Node.JS](https://github.com/nodejs/node)

## Setup

### Installing the dependencies

```sh
>   sudo apt-get install awesome kitty neofetch node rofi zsh  
    sudo snap install code lsd
```

### Swap your default shell to zsh

<details>
    <summary>
        <b>
        Configure also for root account
        </b>
    </summary>

```sh
>   sudo chsh -s /bin/zsh %your-user%
    sudo chsh -s /bin/zsh root
```

Then copy the content of the file [.zshrc](https://github.com/carlosmoshudev/wm-dotfiles/blob/main/.zshrc) to your user ~/.zshrc and link to root

```sh
>   sudo ln -s ~/.zshrc /root/.zshrc
```

</details>
<details>
    <summary>
        <b>
        Configure for your local user
        </b>
    </summary>

```sh
>   sudo chsh -s /bin/zsh %your-user%
```

Then copy the content of the file [.zshrc](https://github.com/carlosmoshudev/wm-dotfiles/blob/main/.zshrc) to your user ~/.zshrc

</details>
> To be continued ^^

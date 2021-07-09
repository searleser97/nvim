### Install neovim-nightly

yay -S neovim-nightly-bin

### Install ripgrep for `Far` plugin

```shell
yay -S ripgrep
```

### Install PowerLine fonts

```shell
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
```

### Install Nerd Fonts

```shell
yay -S nerd-fonts-complete` and use one NERD font
```
### Shared clipboard when using WSL on Windows

Run the following commands inside your WSL.

```shell
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/win32yank.exe
```

This also helps when using vscode-neovim


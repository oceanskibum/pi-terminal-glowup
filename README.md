# Raspberry Pi Terminal Enhancement Toolkit

Make your Raspberry Pi terminal beautiful, functional, and efficient for development.

## 🚀 Features

- Switches to `zsh` for improved shell experience
- Installs and configures Oh My Zsh with Powerlevel10k theme
- Adds plugins: autosuggestions + syntax highlighting
- Adds useful aliases and installs modern CLI tools (`bat`, `exa`, `htop`)
- Smartly detects Raspberry Pi OS and adjusts font/package behavior

## ⚙️ Requirements

- Raspberry Pi OS (Debian-based)
- Internet connection

## 🛠 Installation

```bash
bash <(curl -s https://raw.githubusercontent.com/YOUR_GITHUB/pi-terminal-setup/main/install.sh)
```

> Replace `YOUR_GITHUB` with your GitHub username after uploading the repo.

## 📦 Installed Tools

- [ZSH](https://www.zsh.org/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- `bat`, `exa`, `htop`, `fonts-powerline`

## 🖼 Font Configuration

Install a Nerd Font on your terminal emulator to see icons correctly (like [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)).

## 🧪 Run the Powerlevel10k Config

After install:

```bash
p10k configure
```

This launches a wizard to personalize your prompt style.

## 🤝 Contributing

Pull requests and issues welcome!

## 📜 License

MIT

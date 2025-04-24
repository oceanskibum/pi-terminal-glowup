#!/bin/bash

set -e

# Detect if running on Raspberry Pi
is_pi=false
if grep -q 'Raspberry Pi' /proc/cpuinfo; then
  is_pi=true
  echo "✅ Raspberry Pi detected."
else
  echo "⚠️ Not running on Raspberry Pi. Continuing anyway."
fi

# Update & install base packages
sudo apt update && sudo apt install -y \
  zsh git curl wget bat exa htop fonts-powerline

# Set ZSH as default shell
chsh -s $(which zsh)

# Install Oh My Zsh if not already present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "💾 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Powerlevel10k theme
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
  echo "🎨 Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install plugins
echo "🔌 Installing plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Deploy .zshrc
curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB/pi-terminal-setup/main/.zshrc -o ~/.zshrc

# Done
echo "✅ Terminal environment is now enhanced! Restart or run 'zsh' to enjoy."
exec zsh

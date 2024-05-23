#!/bin/bash
#Authon: Iure Radin

# Verificar se a distribuição é Ubuntu
if [ "$(lsb_release -si)" != "Ubuntu" ]; then
  echo "Este script é destinado apenas para Ubuntu."
  exit 1
fi

echo -e "\e[32m---> \e[0m Atualizando sistema..."  && sudo apt update -y
echo -e "\e[32m---> \e[0m Instalando git..."  && sudo apt install git -y
echo -e "\e[32m---> \e[0m Instalando git..."  && sudo apt install unzip -y
echo -e "\e[32m---> \e[0m Instalando wget..."  && sudo apt install wget -y
echo -e "\e[32m---> \e[0m Instalando net-tools..."  && sudo apt install net-tools -y
echo -e "\e[32m---> \e[0m Instalando zsh..."  && sudo apt install zsh -y
echo -e "\e[32m---> \e[0m Instalando curl..."  && sudo apt install curl -y
echo -e "\e[32m---> \e[0m Instalando vim..."  && sudo apt install vim -y
echo -e "\e[32m---> \e[0m Instalando awscli..."  && sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && sudo unzip awscliv2.zip && sudo ./aws/install

echo -e "\e[32m---> \e[0m Instalando Oh My Zsh..." && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "\e[32m---> \e[0m Instalando plugin zsh syntax-highlighting..."  && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo -e "\e[32m---> \e[0m Instalando plugin zsh autosuggestions..."  && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo -e "\e[32m---> \e[0m Instalando plugin zsh fzf..." && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
echo -e "\e[32m---> \e[0m Instalando tema do zsh powerlevel10k..." && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo -e "\e[32m---> \e[0m Instalando gerenciador de plugins do vim..." && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.backup

cp ~/.vimrc ~/.backup
cp .vimrc ~/.vimrc

cp ~/.zshrc ~/.backup
cp .zshrc ~/.zshrc


echo -e "\e[32mPor favor abra o vim e execute o comando :PlugInstall \e[0m"
chsh -s $(which zsh)

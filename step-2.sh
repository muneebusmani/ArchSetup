#!/bin/bash
cd ~
sudo systemctl enable NetworkManager --now 
sudo systemctl enable bluetooth --now
yay -Syyuu vim github-cli-git neovim gnome gnome-tweaks microsoft-edge-stable-bin freedownloadmanager visual-studio-code-bin php mysql mysql-workbench phpmyadmin composer mssql-server dotnet-sdk nodejs npm nvm python go dart-sdk-dev flutter mongodb
composer global require laravel/installer
dotnet tool install dotnet-ef
npm i -g @angular/cli
npm i -g typescript
npm i -g express
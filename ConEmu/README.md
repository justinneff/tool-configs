# ConEmu

## Installation
1. Download latest Meslo fonts from [Nerd Fonts](https://nerdfonts.com)

2. Install `Meslo LG S DZ Regular Nerd Font Complete Mono.otf` font

3. Follow the Prerequisites and Installation steps for the [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) project

4. Append the following lines to your PowerShell Profile in place of the code in the oh-my-posh project. (This fixes the missing icons for GitHub branch statuses.)
```
Import-Module posh-git
Import-Module oh-my-posh

Set-Theme Paradox

$DefaultUser = '<your-user-name>'

$ThemeSettings.GitSymbols.BranchIdenticalStatusToSymbol = [char]::ConvertFromUtf32(0x2714)
$ThemeSettings.GitSymbols.BranchUntrackedSymbol = [char]::ConvertFromUtf32(0x279A)
```

5. Import the `ConEmu.xml` from this repo into your ConEmu editor.

## Visual Studio Code Terminal Setup
1. Clone the [powerline/fonts](https://github.com/powerline/fonts) repo
```
  git clone https://github.com/powerline/fonts
```
2. Install the `Meslo LG S DZ * for Powerline.ttf` fonts from the `Meslo Dotted` folder in the repo

3. Edit Visual Studio Code Settings and set
```
"terminal.integrated.fontFamily": "'Meslo LG S DZ for Powerline'"
```

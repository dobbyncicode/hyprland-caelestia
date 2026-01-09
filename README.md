# Hyprland Caelestia - Personal Configuration

This repository contains my personal Hyprland window manager configuration and customizations. It's tailored to my specific workflow and preferences.

## Overview

Caelestia represents a personalized desktop environment built on Hyprland with carefully curated configurations, themes, and keybindings optimized for productivity and aesthetics.

## Prerequisites
- arch-based distro
- hyprland
- caelestia dots

## System tweaks
- Auto login user to tty1
- Auto start hyprland from tty1
- Custom `pacman.conf`

## Caelestia shell tweaks
- Script to change wallpaper fill to stretch
- Custom `~/.config/caelestia/shell.json`

## Other config tweaks
- Hyprland overrides
  - Animations
  - Borders
  - Decorations
  - Miscs
  - Cursor
  - Inputs
  - Keybinds
  - Monitors
  - Unbinds
  - Variables
  - Window rules
- Swappy
  - Custom swappy config
- Custom fish greeting

## File Structure

```
$HOME
├── caelestia-config                    # Base config directory
│   ├── auto-tty-login.conf             # tty1 auto-login script
│   ├── .bash_profile                   # Auto start hyprland from tty1
│   ├── caelestia                       # Base caelestia config
│   │   ├── hypr-user.conf              # Main caelestia hyprland user override
│   │   ├── hypr-vars.conf
│   │   ├── Modules                     # Hyprland modules dir
│   │   │   ├── All-About-UI            # UI stuff
│   │   │   │   ├── animations.conf     # Animations override
│   │   │   │   ├── borders.conf        # Borders override
│   │   │   │   ├── decorations.conf    # Decorations override
│   │   │   │   └── miscs.conf          # Miscellanious override
│   │   │   └── All-About-UX            # UX stuff
│   │   │       ├── cursor.conf         # Cursor override
│   │   │       ├── inputs.conf         # Inputs override
│   │   │       ├── keybinds.conf       # Keybinds override
│   │   │       ├── monitors.conf       # Monitors override
│   │   │       ├── no-u.conf           # Unbind caelestia default keybinds
│   │   │       ├── variables.conf      # Variables override
│   │   │       └── window-rules.conf   # Window rules override
│   │   ├── repo-path.conf              # Auto-generated local repo path
│   │   └── shell.json                  # Custom caelestia shell config
│   ├── fish_greeting.fish              # Custom fish greeting
│   ├── pacman.conf                     # Custom pacman.conf
│   ├── scripts                         # Caelestia-specifc scripts
│   │   └── wallpaper-stretch.sh        # Change wallpaper fill to stretch
│   └── swappy                          # Swappy config
│       └── config
├── Documents                           # Documents directory
│   └── .gitkeep
├── .gitignore
├── Pictures                            # ~/Pictures
│   ├── Screenshots                     # ~/Pictures/Screenshots
│   │   └── .gitkeep
│   └── Wallpapers                      # ~/Pictures/Wallpapers
│       └── forest.jpg
├── README.md
├── scripts                             # General scripts
│   ├── install-deps                    # Opinionated base package install script
│   └── link-dots                       # Symlink dotfiles
└── Videos                              # ~/Videos
    └── Recordings                      # ~/Videos/Recordings
        └── .gitkeep
```

## Warning

This repository contains **personal configurations** that are specifically tuned to my system. Using these configurations as-is may cause **conflicts** or **breakage** on your setup, especially the `monitors.conf` as it is hard-coded at the moment. You may comment out this file at `/hypr-user.conf` if you still want to try, but I will not be responsible for anything that may happen with your current setup. Back it up first as always. These are not generic dotfiles meant for sharing—they're my personal workspace. 

If you're looking for the base caelestia configuration, visit the [official caelestia dots repository](https://github.com/caelestia-dots/caelestia).

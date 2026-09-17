# Dotfiles

Personal configuration files for my [Omarchy](https://omarchy.org/) Linux environment, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Current configuration

* **Git**

  * Omarchy defaults with additional aliases and configuration.

* **Hyprland**

  * Mouse acceleration disabled with the `flat` profile.
  * Dual-monitor setup:

## Structure

Each top-level directory is a GNU Stow package and mirrors paths relative to `$HOME`.

```text
dotfiles/
├── git/
│   └── .config/git/config
└── hypr/
    └── .config/hypr/
        ├── input.lua
        └── monitors.lua
```

## Installation

Clone the repository directly into `$HOME`:

```bash
git clone https://github.com/patrickbrouhard/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

Deploy the configurations with Stow:

```bash
stow git
stow hypr
```

Stow creates symlinks from the expected locations in `$HOME` to the files tracked in this repository.


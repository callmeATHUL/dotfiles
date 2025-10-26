# Dotfiles

My personal dotfiles managed with GNU Stow.

## Setup

1. Install GNU Stow: `sudo pacman -S stow`
2. Clone this repository: `git clone <repository-url> ~/dotfiles`
3. Navigate to dotfiles: `cd ~/dotfiles`
4. Stow packages: `stow <package-name>`

## Packages

- **zsh**: Shell configuration
- **kitty**: Terminal emulator configuration
- **starship**: Shell prompt customization
- **xcompose**: X11 compose key sequences
- **waybar**: Status bar configuration
- **hyprland**: Window manager configuration

## Theme

Currently using the **ristretto** theme across all applications:
- Warm coffee-inspired color scheme
- Consistent gold accents (#f9cc6c)
- Dark background (#2c2525)
- Light foreground (#e6d9db)

## Installation

```bash
# Install all packages
cd ~/dotfiles
stow */

# Or install individually
stow zsh
stow kitty
stow starship
# etc.
```

## Notes

- Some configurations are managed by the omarchy theme system
- Mako notifications and SwayOSD are theme-managed
- Hyprland configuration includes multiple config files
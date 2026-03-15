# FIREFLY Theme - Quick Setup Guide

## What You Get

A complete FIREFLY-branded Omarchy system with:
- 🎨 Amber/orange firefly glow color scheme
- 🐚 Fish shell as default with FIREFLY config
- 🖥️ All terminal emulators themed (Alacritty, Kitty, Ghostty)
- ⭐ Starship prompt with FIREFLY colors
- 🔒 Lock screen with FIREFLY branding
- 📊 Status bar (Waybar) with FIREFLY labels
- 🖼️ 3 high-quality firefly wallpapers
- 🎯 btop, neovim, VS Code themes included

## Quick Start (3 Steps)

### 1. Apply the Theme

If `omarchy-theme-set` is available:
```bash
omarchy-theme-set FIREFLY
```

Otherwise, manually symlink:
```bash
ln -sf ~/.config/omarchy/themes/FIREFLY ~/.config/omarchy/current/theme
```

### 2. Restart Components

**CRITICAL:** Waybar doesn't auto-reload, you MUST restart it:
```bash
omarchy-restart-waybar
```

Optional restarts:
```bash
omarchy-restart-terminal  # If terminal colors don't update
exec fish                 # Reload fish shell in current terminal
```

### 3. Enjoy!

Open a new terminal and you'll see:
- ✨ FIREFLY ASCII art banner
- 🎨 Amber-colored commands and prompts
- 🌟 Firefly-themed syntax highlighting

## What Changed

### Automatic (Already Done)
- ✅ Fish shell is your default shell
- ✅ Fish config has FIREFLY colors and welcome banner
- ✅ Starship prompt uses FIREFLY colors (#ffb300 amber)
- ✅ Waybar shows "FIREFLY Menu" and "FIREFLY update"
- ✅ Lock screen shows "FIREFLY // Enter Password"

### Manual Theme Application
You still need to:
1. Apply the FIREFLY theme (see Step 1 above)
2. Restart Waybar (see Step 2 above)

## Testing the Theme

```bash
# Test lock screen
hyprctl dispatch exec "hyprlock"  # or Super+L

# Test terminal colors
fish
# You should see the FIREFLY banner and amber-colored prompts

# Test Waybar
# Hover over the menu icon - tooltip should say "FIREFLY Menu"

# Cycle wallpapers (after theme is applied)
omarchy-theme-bg-next
```

## Customization

All theme files are in: `~/.config/omarchy/themes/FIREFLY/`

### Change Colors
Edit `colors.toml` and change the hex values:
```toml
accent = "#ffb300"  # Change this to any color
```

### Disable Welcome Banner
Edit `~/.config/fish/config.fish` and comment out:
```fish
# if test -f ~/.config/omarchy/themes/FIREFLY/terminal-welcome.sh
#     bash ~/.config/omarchy/themes/FIREFLY/terminal-welcome.sh
# end
```

### Use Enhanced Starship Prompt
The theme includes a fancier starship config with box characters:
```bash
cp ~/.config/omarchy/themes/FIREFLY/starship.toml ~/.config/starship.toml
exec fish
```

### Add More Wallpapers
Just drop images into:
```bash
~/.config/omarchy/themes/FIREFLY/backgrounds/
```

Name them with numbers: `4-my-wallpaper.jpg`, `5-another.png`, etc.

## Troubleshooting

### Terminal colors don't change
```bash
omarchy-restart-terminal
# Or just close and reopen your terminal
```

### Waybar still says "Omarchy"
```bash
omarchy-restart-waybar  # MUST run this!
```

### Fish banner doesn't show
Make sure you're in an interactive shell and the file exists:
```bash
ls -l ~/.config/omarchy/themes/FIREFLY/terminal-welcome.sh
# Should show: -rwxr-xr-x (executable)
```

### Theme not applying
Check if symlink exists:
```bash
ls -l ~/.config/omarchy/current/theme
# Should point to: ~/.config/omarchy/themes/FIREFLY
```

## Files Modified

These system files were customized with FIREFLY branding:
- `~/.config/fish/config.fish`
- `~/.config/starship.toml`
- `~/.config/waybar/config.jsonc`
- `~/.config/hypr/hyprlock.conf`

To revert any of these, you can use:
```bash
omarchy-refresh-<component>  # e.g., omarchy-refresh-waybar
```

## Next Steps

- Try different wallpapers: `omarchy-theme-bg-next`
- Customize colors in `colors.toml`
- Explore the enhanced starship prompt
- Set up neovim or VS Code with the included themes

---

**Need help?** Check the full README: `~/.config/omarchy/themes/FIREFLY/README.md`

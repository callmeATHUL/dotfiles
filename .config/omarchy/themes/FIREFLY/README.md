# FIREFLY Theme

A custom Omarchy theme with complete FIREFLY branding, featuring warm amber/orange firefly glow colors.

## Theme Features

### Color Scheme
- **Accent Color**: Firefly amber glow (#ffb300)
- **Background**: Deep dark night sky (#0d1117)
- **Foreground**: Light gray (#e8eaed)
- **Cursor**: Bright firefly yellow (#ffd54f)

### Customizations

#### 1. Waybar (Status Bar)
- Menu tooltip changed to "FIREFLY Menu"
- Update notification shows "FIREFLY update available"
- Restart waybar after changes: `omarchy-restart-waybar`

#### 2. Lock Screen (Hyprlock)
- Large "FIREFLY" branding at top in amber glow
- "Security System" subtitle
- Live time and date display
- Password placeholder: "FIREFLY // Enter Password"
- Amber-colored input field outline

#### 3. Wallpapers
Three high-quality firefly/bioluminescent themed wallpapers:
- `1-firefly-glow.jpg` - Firefly amber glow
- `2-bioluminescent-forest.jpg` - Bioluminescent forest scene
- `3-firefly-night.jpg` - Fireflies at night

#### 4. Fish Shell
Fish shell is configured as the default shell with:
- FIREFLY welcome banner on startup
- Custom syntax highlighting in firefly colors
- Amber command colors, yellow keywords
- Custom completion/pager colors
- Optional FIREFLY-branded prompt (commented out by default)

Config: `~/.config/fish/config.fish`

#### 5. Terminal Emulators
All three terminal emulators are fully themed with FIREFLY colors:

**Alacritty** (`alacritty.toml`):
- Complete 16-color FIREFLY palette
- Amber cursor and selection
- Indexed accent colors

**Kitty** (`kitty.conf`):
- FIREFLY color scheme
- Themed tab bar (amber active tabs)
- Mark colors for text highlighting

**Ghostty** (`ghostty`):
- Full FIREFLY palette
- Matching cursor and selection colors

#### 6. Starship Prompt
Two starship configurations provided:

1. **Main config** (`~/.config/starship.toml`): Updated with FIREFLY colors
   - Amber prompt symbol and git branch
   - Yellow directory paths

2. **Enhanced config** (`starship.toml` in theme): Full FIREFLY-branded prompt
   - Box-drawing characters in amber
   - Comprehensive git status
   - Language indicators
   - Time and duration display

To use enhanced prompt:
```bash
cp ~/.config/omarchy/themes/FIREFLY/starship.toml ~/.config/starship.toml
```

#### 7. Other Integrations
- **btop**: Custom FIREFLY theme with amber/orange color scheme
- **Neovim**: Base16-style theme (`neovim.lua`)
- **VS Code**: JSON theme file (`vscode.json`)
- **Icons**: Papirus-Dark icon theme
- **Terminal colors**: All 16 terminal colors customized with firefly palette

## Installation

The theme has been created at:
```
~/.config/omarchy/themes/FIREFLY/
```

To apply the theme, use:
```bash
omarchy-theme-set FIREFLY
```

Or if the command isn't available, manually symlink the theme:
```bash
ln -sf ~/.config/omarchy/themes/FIREFLY ~/.config/omarchy/current/theme
```

## Files Included

```
~/.config/omarchy/themes/FIREFLY/
├── backgrounds/
│   ├── 1-firefly-glow.jpg
│   ├── 2-bioluminescent-forest.jpg
│   └── 3-firefly-night.jpg
├── alacritty.toml       # Alacritty terminal theme
├── btop.theme           # btop system monitor theme
├── colors.toml          # Base terminal color palette
├── ghostty              # Ghostty terminal theme
├── hyprlock.conf        # Lock screen with FIREFLY branding
├── icons.theme          # Icon theme (Papirus-Dark)
├── kitty.conf           # Kitty terminal theme
├── neovim.lua           # Neovim color scheme
├── starship.toml        # Enhanced Starship prompt
├── terminal-welcome.sh  # ASCII banner script
├── vscode.json          # VS Code theme
└── README.md            # This file
```

**Modified System Files:**
- `~/.config/fish/config.fish` - Fish shell with FIREFLY config
- `~/.config/starship.toml` - Starship prompt (FIREFLY colors)
- `~/.config/waybar/config.jsonc` - Status bar branding
- `~/.config/hypr/hyprlock.conf` - Lock screen branding

## Applying the Theme

### Method 1: Using omarchy-theme-set (if available)
```bash
omarchy-theme-set FIREFLY
```

### Method 2: Manual symlink
```bash
ln -sf ~/.config/omarchy/themes/FIREFLY ~/.config/omarchy/current/theme
```

### Restarting Components

After applying the theme, restart these components:
```bash
omarchy-restart-waybar     # Status bar (REQUIRED - doesn't auto-reload)
omarchy-restart-terminal   # Terminal emulator
hyprctl reload             # Hyprland (if needed)

# For Fish shell - restart your terminal or run:
exec fish
```

## Customization

Feel free to edit any files in `~/.config/omarchy/themes/FIREFLY/` to further customize:
- `colors.toml` - Adjust colors
- `hyprlock.conf` - Modify lock screen layout
- `btop.theme` - Change btop colors
- Add more wallpapers to `backgrounds/`

## Branding Philosophy

The FIREFLY theme represents:
- **Illumination**: Like fireflies lighting up the night
- **Warmth**: Amber and orange glows
- **Elegance**: Clean, modern design
- **Night**: Dark backgrounds that are easy on the eyes

## Credits

- Theme created for Omarchy Linux
- Wallpapers sourced from Unsplash (free to use)
- Color palette inspired by natural firefly bioluminescence

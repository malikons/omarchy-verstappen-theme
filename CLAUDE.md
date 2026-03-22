# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

An [Omarchy](https://omarchy.com) theme inspired by Max Verstappen and Red Bull Racing. Omarchy themes are collections of config files that get symlinked or copied into place by the Omarchy framework to style an entire Linux desktop environment.

## Installation & Usage

Install via:
```bash
omarchy-theme-install https://github.com/malikons/omarchy-verstappen-theme
```

Or manually copy to `~/.config/omarchy/themes/verstappen/`, then activate with `Super + Ctrl + Shift + Space`.

## Color Palette (colors.toml is the source of truth)

| Role | Hex | Usage |
|------|-----|-------|
| Background primary | `#0a0e1a` | Deep navy base |
| Accent primary | `#e8002d` | Red Bull red — borders, highlights |
| Accent secondary | `#ff6600` | Dutch orange |
| Accent tertiary | `#ffd700` | Championship gold — cursor, wins |
| Foreground primary | `#e8eaf0` | Cool white text |

## File Roles

Each file targets a specific application:

- `colors.toml` — canonical palette; all other files derive from these values
- `hyprland.conf` — window border colors and shadow settings (partial config, not full Hyprland config)
- `hyprlock.conf` — lock screen appearance
- `waybar.css` — top bar styling
- `walker.css` / `wofi.css` — application launchers
- `mako.ini` — notification daemon
- `swayosd.css` — volume/brightness overlay
- `alacritty.toml` / `ghostty.conf` / `ghostty-theme` / `kitty.conf` — terminal emulator themes
- `neovim.lua` — Neovim color scheme
- `vscode.json` — VSCode/Cursor/VSCodium theme settings
- `btop.theme` — system monitor
- `chromium.theme` — browser
- `icons.theme` — icon pack (Yaru-red)

## Theme Consistency Rule

When editing colors, always keep all files consistent with `colors.toml`. The same hex values appear across multiple files — a change to an accent color must be propagated to every file that uses it.

## Wallpapers

SVG wallpapers live in `backgrounds/`. Three are included: `speed.svg` (light-trail streaks), `circuit.svg` (Zandvoort circuit map), `champion.svg` (four-championship tribute). All use the theme's color palette. Omarchy cycles them with `Super + Ctrl + Space`.

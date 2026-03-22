# 🌙 Caelestia - Hybrid Dotfiles

A modular, scalable, and "Vibecoded" Hyprland setup. This repository acts as a **Selective Override Layer** on top of the Caelestia upstream, ensuring custom tweaks are preserved through shell updates.

---

## 📂 Project Structure

- `dotfiles/` — Custom overrides for `$HOME` (Links *inside* upstream configs).
- `system/` — Root-level tweaks (`/etc`) managed via `sudo`.
- `assets/` — Centralized media (Pictures, Videos, Documents, Tailscale).
- `scripts/` — Automated maintenance, configuration, and patching.

## 🚀 Deployment

To install dependencies, link dotfiles, and apply system patches:

```bash
chmod +x scripts/setup
./scripts/setup
```

## 🛠️ Tooling

| Script | Function |
| :--- | :--- |
| `setup` | The core installer. Handles recursive linking and system patching. |
| `monitor-config` | Interactive monitor layout (Side-by-side/Stacked, Bottom-Aligned). |
| `patch-shell` | Surgical patch for Quickshell utilities (Hover to Drag logic). |
| `clean-up` | Reclaims space by purging caches, orphans, and system logs. |
| `wallpaper-fill` | Modifies the Caelestia background shell scaling modes. |

## 󰍹  Monitor Configuration

To update your display layout (Side-by-side or Stacked) while maintaining bottom-alignment:

```bash
./scripts/monitor-config --new
```

---
*Stay minimal. Stay efficient. Stay aesthetic.* 🌙

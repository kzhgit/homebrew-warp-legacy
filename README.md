# homebrew-warp-legacy

🍺 **Legacy versions of Warp terminal for Homebrew** - Providing access to stable older versions for users experiencing issues with recent releases.

[![Homebrew](https://img.shields.io/badge/Homebrew-tap-orange.svg)](https://brew.sh/)
[![GitHub](https://img.shields.io/badge/GitHub-kzhgit/homebrew--warp--legacy-blue.svg)](https://github.com/kzhgit/homebrew-warp-legacy)

## Purpose

Warp's frequent updates bring exciting new features and improvements, but sometimes introduce regressions that affect daily workflows. For example, recent versions have experienced IME input issues that prevent proper input of non-Latin languages like Japanese, Chinese, and Korean ([#6891](https://github.com/warpdotdev/Warp/issues/6891), [#6886](https://github.com/warpdotdev/Warp/issues/6886)).

This tap provides stable, older versions of Warp as a fallback. Use it when a recent update breaks your workflow or you need consistent behavior for critical projects. It serves as a temporary solution while waiting for official fixes.

For the latest features, always prefer the official version: `brew install --cask warp`.  
You can also visit the [Warp website](https://www.warp.dev/) for more information.

## Installation

### Before Installation

**Important:** Remove existing Warp first to avoid conflicts:
- Drag Warp.app from Applications folder to Trash

### Install Legacy Version

```bash
brew tap kzhgit/warp-legacy
brew install --cask warp@2025-07-09
```

### Available Versions

```bash
brew search kzhgit/warp-legacy/
```

## Available Versions

⚠️ Note: This tap provides access to older versions of Warp for installation purposes only.  
It does not guarantee stability or verify specific features.  
For official changelogs and detailed release information, please refer to the [Warp Changelog](https://docs.warp.dev/getting-started/changelog).

## Troubleshooting

### Installation Problems

**Already installed error:**
```bash
brew reinstall --cask warp@2025-07-09
```

**If installation still fails:**
```bash
brew cleanup --prune=all
brew install --cask warp@2025-07-09 --force
```

**Check installation:**
```bash
brew list --cask | grep warp
```

## Important Considerations

### Security & Updates

- **Legacy versions may lack security updates** - Monitor official releases for critical fixes
- **Auto-updates are disabled** - Prevents accidental upgrade to versions with regressions
- **Regular review recommended** - Check periodically if official versions have fixed your issues

### Usage Guidelines

- ✅ **Use for stability requirements** - When you need consistent, working functionality
- ✅ **Temporary solution** - Consider migrating back to official version once issues are resolved
- ⚠️ **Monitor official releases** - Stay informed about bug fixes and improvements
- ❌ **Limited to legacy features** - Use official tap for latest functionality

## Staying Updated

### Back to Official Version

```bash
brew uninstall --cask warp@2025-07-09
brew install --cask warp
```

## Contributing

### Reporting Issues

- **Tap-specific problems**: Report in this repository
- **Warp functionality issues**: Report to [official Warp repository](https://github.com/warpdotdev/Warp/issues)

## License & Disclaimer

- This repository is unofficial and has no affiliation with Warp Dev Inc.
- It provides legacy Homebrew Cask files that reference officially distributed Warp binaries, allowing installation via Homebrew.
- This repository does not redistribute Warp binaries or source code in any form.
- Warp is proprietary software, and all rights are reserved by Warp Dev Inc.
- For Warp’s official license terms and usage guidelines, please refer to: [LICENSE](https://github.com/warpdotdev/Warp/blob/main/LICENSE)

---

**Note**: This is an unofficial tap providing legacy versions. Please use the official version once issues are resolved: `brew install --cask warp`

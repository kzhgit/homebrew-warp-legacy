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

### 1. Add the Tap

```bash
brew tap kzhgit/warp-legacy
```

### 2. Install Legacy Version

**Example version (reported to work with IME input):**
```bash
brew install --cask kzhgit/warp-legacy/warp@2025-07-09
```

**Check available versions:**
```bash
brew search kzhgit/warp-legacy/
```

### 3. Switch from Official Warp

If you have the official Warp installed:

```bash
# Remove official version (optional)
brew uninstall --cask warp

# Install stable legacy version
brew install --cask kzhgit/warp-legacy/warp@2025-07-09
```

## Available Versions

⚠️ Note: This tap provides access to older versions of Warp for installation purposes only.  
It does not guarantee stability or verify specific features.  
For official changelogs and detailed release information, please refer to the [Warp Changelog](https://docs.warp.dev/getting-started/changelog).

## Troubleshooting

### Installation Issues

#### "Warning: Not upgrading, the latest version is already installed"

**Quick Fix:**
```bash
brew reinstall --cask kzhgit/warp-legacy/warp@2025-07-09
```

**Complete Reset:**
```bash
# 1. Remove completely
brew uninstall --cask --force kzhgit/warp-legacy/warp@2025-07-09

# 2. Clear cache
brew cleanup --prune=all

# 3. Reinstall
brew install --cask kzhgit/warp-legacy/warp@2025-07-09
```

#### Download Cache Problems

```bash
# Clear download cache
rm -rf ~/Library/Caches/Homebrew/downloads/*warp*

# Force reinstall
brew install --cask kzhgit/warp-legacy/warp@2025-07-09 --force
```

### Verification Commands

```bash
# Check installed versions
brew list --cask | grep warp

# Verify application
ls -la /Applications/ | grep -i warp

# Check tap status
brew tap-info kzhgit/warp-legacy
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

### Tap Updates

```bash
# Update tap information
brew update

# Check for new legacy versions
brew search kzhgit/warp-legacy/
```

### Migration Back to Official

When official Warp fixes your issues:

```bash
# Remove legacy version
brew uninstall --cask kzhgit/warp-legacy/warp@2025-07-09

# Install latest official version
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

# Ghostboard for Homebrew

Official Homebrew cask for Ghostboard, a native Mac workspace with Ghostty terminals,
browser tiles, files and team messaging. Requires **Apple Silicon and macOS 14+**.

## Install

With [Homebrew](https://brew.sh/) installed:

```sh
brew install --cask kaushal07wick/tap/ghostboard
open -a Ghostboard
```

If you already installed an older Ghostboard manually, save your terminal work
and fully quit the app, then replace it with:

```sh
brew install --cask --force kaushal07wick/tap/ghostboard
open -a Ghostboard
```

This replaces `/Applications/Ghostboard.app`. Chat history, attachments, settings
and pairing keys are kept. No new invitation is needed just for an upgrade.
Both colleagues should install the current release to use the same chat features.

The app is currently ad-hoc signed, not Apple-notarized. If macOS blocks your
trusted download on first launch, go to **System Settings → Privacy & Security →
Open Anyway**. Homebrew installation does not bypass this check.

## Update

Save terminal work and quit the app before upgrading:

```sh
brew update
brew upgrade --cask --greedy kaushal07wick/tap/ghostboard
```

Or use **Ghostboard → Check for Updates…** and approve the in-app update.
The `--greedy` option includes apps with their own updater.

## Releases and maintenance

[Download a DMG or read release notes](https://github.com/kaushal07wick/ghostboard-releases/releases).
This tap contains only the package definition and instructions; the app source
is maintained separately. Casks use versioned public downloads with SHA-256 checksums.
The Ghostboard release publisher updates this cask after publishing and verifying
each stable release. Plain source pushes do not publish an app or cask update.

[Homebrew tap documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)

# Homebrew tap for Cold Open

Cold Open is a free, open-source screenwriting app for the Mac. It writes with Final Draft's elements and keys, paginates the way Final Draft does, and opens and saves Final Draft (.fdx) and Fountain files. Source: [MIM18-code/cold-open](https://github.com/MIM18-code/cold-open).

## Install

```bash
brew tap MIM18-code/cold-open
brew trust MIM18-code/cold-open
brew install --cask cold-open
```

Recent Homebrew refuses casks from third-party taps until you trust the tap once; that is the second line. The app is signed with MindInMotion LLC's Developer ID and notarized by Apple, so it opens on first launch with no extra step.

Apple Silicon and macOS 14 or later; local table-read voices need macOS 15. Upgrade with `brew upgrade --cask cold-open`. Remove with `brew uninstall --cask cold-open`; add `--zap` to also delete Cold Open's settings and voice packs.

## User guide

[Read the Cold Open guide](https://mindinmotionsoftware.com/guides/cold-open/index.html) for setup, screenshots, captioned walkthroughs and troubleshooting. You can also [download the complete guide](https://mindinmotionsoftware.com/downloads/ColdOpen-user-guide.zip) to read it and watch the videos offline.

## How releases land here

Each release is built, signed and notarized with `npm run release:prepare` in the source repository and published on [MIM18-code/cold-open](https://github.com/MIM18-code/cold-open/releases), tagged `v<version>`. `scripts/homebrew-cask.mjs` writes `Casks/cold-open.rb` with the matching sha256.

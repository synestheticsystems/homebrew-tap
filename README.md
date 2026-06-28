# Synesthetic Systems Homebrew Tap

Homebrew formulae and casks for [Synesthetic Systems](https://github.com/synestheticsystems) tools.

```sh
brew tap synestheticsystems/tap
```

## sutra

A dev environment status dashboard — monitors a well-known state folder and
renders unit state in a glanceable GUI or TUI with sounds, speech, and
notifications.

**GUI app** (signed + notarized `.app` in `/Applications`, shows in Launchpad):

```sh
brew install --cask synestheticsystems/tap/sutra
```

**CLI binary** (builds from source, installs `sutra` on your PATH):

```sh
brew install synestheticsystems/tap/sutra
```

The cask and the formula install the same tool two different ways — pick the
cask if you want a double-clickable app in `/Applications`, or the formula if
you just want the `sutra` command. Source: <https://github.com/synestheticsystems/sutra>.

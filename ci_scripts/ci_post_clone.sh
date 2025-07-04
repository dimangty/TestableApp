#!/bin/zsh

set -e

echo ">>> SKIP MACRO & PLUGINS FINGERPRINT VALIDATION"
defaults write com.apple.dt.Xcode IDESkipMacroFingerprintValidation -bool YES
defaults write com.apple.dt.Xcode IDESkipPackagePluginFingerprintValidatation -bool YES

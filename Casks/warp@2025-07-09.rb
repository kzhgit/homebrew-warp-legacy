# Based on homebrew-cask commit beb1323e5fd107bf02bc796e7874a308466831be
# Original: https://github.com/Homebrew/homebrew-cask/blob/beb1323e5fd107bf02bc796e7874a308466831be/Casks/w/warp.rb
cask "warp@2025-07-09" do
  version "0.2025.07.09.08.11.stable_01"
  sha256 "9d1234c6d2c5c85aaa342663207d3b0f1bade0e75930edca1c7c8f78d4f75caa"

  url "https://app.warp.dev/download/brew?version=v#{version}"
  name "Warp (July 9, 2025)"
  desc "Rust-based terminal - Legacy version for compatibility"
  homepage "https://www.warp.dev/"

  livecheck do
    skip "This is a legacy version tap"
  end

  auto_updates false

  app "Warp.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end

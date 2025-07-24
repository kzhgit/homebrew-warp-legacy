# Based on homebrew-cask commit 840a5f350be3fad461aa51935f74e649e9e5437c
# Original: https://github.com/Homebrew/homebrew-cask/blob/840a5f350be3fad461aa51935f74e649e9e5437c/Casks/w/warp.rb
cask "warp@2025-07-02" do
  version "0.2025.07.02.08.36.stable_02"
  sha256 "61765b628a01aa7de31a859dfa9bcfb3de4eaba57db23100d880bb744b23da1b"

  url "https://app.warp.dev/download/brew?version=v#{version}"
  name "Warp (July 2, 2025)"
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

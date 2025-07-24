# Based on homebrew-cask commit fd4ccefeb139f07165cec75e32ac6d556b3e0968
# Original: https://github.com/Homebrew/homebrew-cask/blob/fd4ccefeb139f07165cec75e32ac6d556b3e0968/Casks/w/warp.rb
cask "warp@2025-07-16" do
  version "0.2025.07.16.08.12.stable_04"
  sha256 "d68aac203089300c41aaa8dfcec69d2948431e84b866c409d32141fd9cb35347"

  url "https://app.warp.dev/download/brew?version=v#{version}"
  name "Warp (July 16, 2025)"
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

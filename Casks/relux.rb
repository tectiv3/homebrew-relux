cask "relux" do
  version "1.17.1"
  sha256 "2c2b8b3112126f9ec051aef2d5dd2ef82985a165a13db8c20a47fa8b333faa6f"

  url "https://github.com/tectiv3/relux/releases/download/v#{version}/Relux-#{version}.dmg"
  name "Relux"
  desc "macOS menu-bar utility for app launching, clipboard history, and translation"
  homepage "https://github.com/tectiv3/relux"

  depends_on macos: ":sonoma"

  app "Relux.app"

  zap trash: [
    "~/Library/Application Support/com.relux.app",
    "~/Library/Preferences/com.relux.app.plist",
  ]
end

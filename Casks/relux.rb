cask "relux" do
  version "1.15.1"
  sha256 "52f8d176b328a83cde0fb7f4c28cfeeaa11d3423e84474b7fd2d5b19956c612d"

  url "https://github.com/tectiv3/relux/releases/download/v#{version}/Relux-#{version}.dmg"
  name "Relux"
  desc "macOS menu-bar utility for app launching, clipboard history, and translation"
  homepage "https://github.com/tectiv3/relux"

  depends_on macos: ">= :sonoma"

  app "Relux.app"

  zap trash: [
    "~/Library/Application Support/com.relux.app",
    "~/Library/Preferences/com.relux.app.plist",
  ]
end

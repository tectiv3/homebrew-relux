cask "relux" do
  version "1.11.1"
  sha256 "13da33db418259ed420e2b4d659df89b19b8c33ffb5df6396e2660bf801afc46"

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

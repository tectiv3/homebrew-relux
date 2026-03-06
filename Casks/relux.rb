cask "relux" do
  version "1.7.3"
  sha256 "da359227876ad91e4b0904e99e5e6c30c51bea4f526d1ea2669d40214bfc6b4e"

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

cask "relux" do
  version "1.12.0"
  sha256 "e8915c3e29249a3ea3f00c14f694f2325dc290336cc60ddfd610c06d780b18c9"

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

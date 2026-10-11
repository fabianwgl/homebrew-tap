cask "dvsk" do
  version "0.1.0"
  sha256 "44aa9c32685ddc671ad74674fe9bfc34713fa96bafa902ad38d857290f737a1f"

  url "https://github.com/fabianwgl/dvsk/releases/download/v#{version}/Dvsk-#{version}.dmg"
  name "Dvsk"
  desc "Open-source f.lux alternative that warms the screen in the evening"
  homepage "https://github.com/fabianwgl/dvsk"

  depends_on macos: ">= :sequoia"

  app "Dvsk.app"

  uninstall quit: "dev.fwgl.dvsk"

  zap trash: "~/Library/Preferences/dev.fwgl.dvsk.plist"

  caveats <<~EOS
    Dvsk is not notarized, so macOS blocks the first launch. Allow it with:
      xattr -dr com.apple.quarantine #{appdir}/Dvsk.app
  EOS
end

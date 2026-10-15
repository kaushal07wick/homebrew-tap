cask "ghostboard" do
  version "0.7.5"
  sha256 "23fb3aee2966dd8c3689ff6a389f70431bca94271c592759884c74ccb9b815ac"

  url "https://github.com/kaushal07wick/ghostboard-releases/releases/download/v#{version}/Ghostboard-#{version}-arm64.dmg"
  name "Ghostboard"
  desc "Native terminal workspace with browser tiles and team messaging"
  homepage "https://github.com/kaushal07wick/ghostboard-releases"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ghostboard.app"

  caveats <<~EOS
    Save terminal work and quit Ghostboard before upgrading.
    This build is not Apple-notarized. If macOS blocks your trusted download,
    open System Settings > Privacy & Security > Open Anyway after first launch.
  EOS
end

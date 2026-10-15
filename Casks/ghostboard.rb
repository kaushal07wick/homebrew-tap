cask "ghostboard" do
  version "0.7.4"
  sha256 "b9486b4f6d872ca52ee95d8e038ffad59041f426bf3e0d7c7f946020a016a6fb"

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

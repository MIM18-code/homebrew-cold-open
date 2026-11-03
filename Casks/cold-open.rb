cask "cold-open" do
  version "0.1.0-beta.8"
  sha256 "94b9b823b01ba32644da17013a6a9675895da11228a39b14f31d8140617168d8"

  url "https://github.com/MIM18-code/cold-open/releases/download/v#{version}/ColdOpen-#{version}.dmg"
  name "Cold Open"
  desc "Screenwriting app that opens and saves Final Draft files"
  homepage "https://github.com/MIM18-code/cold-open"

  # Beta versions: the default GitHub strategies read only plain x.y.z tags.
  livecheck do
    url "https://github.com/MIM18-code/cold-open/releases/latest"
    regex(%r{/tag/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$}i)
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Cold Open.app"

  zap trash: [
    "~/Library/Application Support/Cold Open",
    "~/Library/Application Support/Inklot",
    "~/Library/Preferences/tv.mindinmotion.inklot.plist",
    "~/Library/Saved Application State/tv.mindinmotion.inklot.savedState",
  ]

  caveats <<~EOS
    Setup, screenshots and captioned walkthroughs:
      https://mindinmotionsoftware.com/guides/cold-open/index.html
  EOS
end

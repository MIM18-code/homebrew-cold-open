cask "cold-open" do
  version "0.1.0-beta.1"
  sha256 "3bef5fd6d12977f7ac7a03f139d0b0ba80bb411d7e8984fadab59915c0342149"

  url "https://github.com/MIM18-code/cold-open/releases/download/v#{version}/ColdOpen-#{version}.dmg"
  name "Cold Open"
  desc "Free, open-source screenwriting app with Final Draft files, co-writing and dictation"
  homepage "https://github.com/MIM18-code/cold-open"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Cold Open.app"

  zap trash: [
    "~/Library/Application Support/Cold Open",
    "~/Library/Application Support/Inklot",
    "~/Library/Preferences/tv.mindinmotion.inklot.plist",
    "~/Library/Saved Application State/tv.mindinmotion.inklot.savedState",
  ]
end

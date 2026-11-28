cask "badasseo" do
  version "1.2.2"
  sha256 "9988bbf3a7ed45e02eb1926f883b7a222157d86787c74308b9047b19970398a7"

  url "https://github.com/ulBible/badasseo/releases/download/v#{version}/Badasseo-#{version}.dmg"
  name "Badasseo"
  name "받아써"
  desc "Korean-first local voice typing (whisper.cpp)"
  homepage "https://github.com/ulBible/badasseo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Badasseo.app"

  zap trash: [
    "~/Library/Application Support/Badasseo",
    "~/Library/Preferences/app.badasseo.plist",
  ]
end

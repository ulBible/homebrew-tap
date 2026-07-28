cask "badasseo" do
  version "1.0.4"
  sha256 "74587486a1dd771cc3c2f4b952790b302668151cd272c5f4ac278dd0f44870a2"

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

cask "badasseo" do
  version "1.2.1"
  sha256 "09d6b42bb8a20efb82d8f9234f11862fd495763b56fa166a79d3d2cdb3623ac8"

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

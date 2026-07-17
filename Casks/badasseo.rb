cask "badasseo" do
  version "1.0.0"
  sha256 "8217a7b8fb583e1f781d967776fd57027ef06f148c2599abe7821945783e39f5"

  url "https://github.com/ulBible/badasseo/releases/download/v#{version}/Badasseo-#{version}.zip"
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

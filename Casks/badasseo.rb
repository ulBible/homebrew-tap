cask "badasseo" do
  version "1.0.0"
  sha256 "452bbd5bad25cc32f7d1bb145d1bb4b7607f2e1d8b3d065d6cfbd756771f186f"

  url "https://github.com/ulBible/badasseo/releases/download/v#{version}/Badasseo-#{version}.zip"
  name "Badasseo"
  name "받아써"
  desc "Korean-first local voice typing for the Mac menu bar (whisper.cpp)"
  homepage "https://github.com/ulBible/badasseo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Badasseo.app"

  zap trash: [
    "~/Library/Application Support/Badasseo",
    "~/Library/Preferences/app.badasseo.plist",
  ]
end

cask "badasseo" do
  version "1.0.0"
  sha256 "2b9578612c76014fea3d3f90f435828bcd7fa0ab688788078d48398fb9ce46cf"

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

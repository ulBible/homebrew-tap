cask "badasseo" do
  version "1.0.3"
  sha256 "9fd146b31b854a88f67f9024cd5ebfb57c65ed53de25fc7b290dd7f51efdfe33"

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

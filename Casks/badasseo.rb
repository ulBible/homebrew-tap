cask "badasseo" do
  version "1.0.0"
  sha256 "1c433438f0f435ee2b8a0ae07caad57ffb3094c577730b13feaf0de9154d51c3"

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

cask "badasseo" do
  version "1.1.0"
  sha256 "46d04f20d65091573baab7db4894e439e27ccb64859cf7facb6299936f65ee61"

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

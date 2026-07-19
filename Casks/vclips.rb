cask "vclips" do
  version "1.2.4"
  sha256 "70fee712617f086aef95bcd8b28c30dd14176214f1c49c11ae9b0a0d734056ab"

  url "https://github.com/ulBible/vClips/releases/download/v#{version}/vClips-#{version}.zip"
  name "vClips"
  desc "Lightweight menu-bar clipboard manager"
  homepage "https://github.com/ulBible/vClips"

  # Sparkle keeps the app up to date after install; brew upgrade also works.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "vClips.app"

  zap trash: [
    "~/Library/Application Support/vClips",
    "~/Library/Preferences/com.vclips.app.plist",
  ]
end

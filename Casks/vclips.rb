cask "vclips" do
  version "1.2.2"
  sha256 "d50e75880bbaea29704691a9cedfb649b0bdd713a797925f452d528a21308132"

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

cask "vclips" do
  version "1.2.4"
  sha256 "ca5ea193485fcdc99c723cfcf72302f4be04eafde79332122acce5c05cd7bd47"

  url "https://github.com/ulBible/vClips/releases/download/v#{version}/vClips-#{version}.dmg"
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

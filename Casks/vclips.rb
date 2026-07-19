cask "vclips" do
  version "1.2.3"
  sha256 "5d1d55898414585a166f9238e7c1cdf30d52973d9b91228e49afe4ed5c6780d5"

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

cask "ppobasseo" do
  version "0.1.0"
  sha256 "defacfb1abaf20ee40e7e7c2e1aa425f997f18b8afd918e11ec1b825a66ba350"

  url "https://github.com/ulBible/Ppobasseo/releases/download/v#{version}/Ppobasseo-#{version}.dmg"
  name "Ppobasseo"
  name "뽑아써"
  desc "On-device screen text extraction (Apple Vision OCR) with reference translation"
  homepage "https://github.com/ulBible/Ppobasseo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Ppobasseo.app"

  zap trash: [
    "~/Library/Preferences/app.ppobasseo.plist",
  ]
end

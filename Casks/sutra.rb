cask "sutra" do
  version "0.1.4"
  sha256 "f420d87a07d9775ea4fd1f4352c7cc9016a95024f159b4b8be7b51c16460c113"

  url "https://github.com/synestheticsystems/sutra/releases/download/v#{version}/Sutra-#{version}.dmg",
      verified: "github.com/synestheticsystems/sutra/"
  name "Sutra"
  desc "Dev environment status dashboard with GUI/TUI"
  homepage "https://github.com/synestheticsystems/sutra"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Sutra.app"

  zap trash: "~/Library/Saved Application State/systems.synesthetic.sutra.savedState"
end

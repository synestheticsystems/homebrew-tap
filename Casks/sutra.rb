cask "sutra" do
  version "0.1.5"
  sha256 "a31afd163d9e23b6bddaf77e702e8476552fd7c473cb052d5683c6ef29ac05b4"

  url "https://github.com/synestheticsystems/sutra/releases/download/v#{version}/Sutra-#{version}.dmg"
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

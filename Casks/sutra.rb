cask "sutra" do
  version "0.1.6"
  sha256 "fbaa47d6d6de0af1c1449222d426bdf7dd84068435b78932c9f6a6985cf8507e"

  url "https://github.com/synestheticsystems/sutra/releases/download/v#{version}/Sutra-#{version}.dmg"
  name "Sutra"
  desc "Dev environment status dashboard with GUI/TUI"
  homepage "https://github.com/synestheticsystems/sutra"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Sutra.app"

  zap trash: "~/Library/Saved Application State/systems.synesthetic.sutra.savedState"
end

cask "shannanigans" do
  version "0.4.0"
  sha256 "cf40ba8642dcd875cbf28b294f2d37fa3dcddfab59bb1d218759678ccddcc10e"

  url "https://shannanigans.app/download/Shannanigans-#{version}.dmg"
  name "Shannanigans"
  desc "Switch desktop coding accounts and keep local conversations"
  homepage "https://shannanigans.app/"

  livecheck do
    url "https://shannanigans.app/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "Shannanigans.app"
  binary "#{appdir}/Shannanigans.app/Contents/Helpers/shannanigans"

  uninstall quit: "app.shannanigans.Shannanigans"

  caveats <<~EOS
    Switching accounts quits and reopens the desktop app, so let running work finish first.
    Uninstalling leaves your saved logins and sessions where they are, so no account is
    signed out behind your back.
  EOS
end

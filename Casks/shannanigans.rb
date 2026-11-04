cask "shannanigans" do
  version "0.3.0"
  sha256 "0319c7b87d6297beda1fffbd39411639d5d52dad05463466595791439be2c81a"

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

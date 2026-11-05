cask "shannanigans" do
  version "0.5.1"
  sha256 "f06e7792956e379272b4dde9418533e1c4bdade140a1b8db254bab7fd199e12e"

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

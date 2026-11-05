cask "shannanigans" do
  version "0.5.0"
  sha256 "e18925e0a6b03c9cb7af4ee56fb45a8af1615f8229b67e8bf1a14d4f17de4bb5"

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

cask "caffeinate-disablesleep" do
  version "1.0"
  sha256 "c6acb9c231b54008eb7316af81ee00924022b560d3c6ca51104296125beb4224"

  url "https://github.com/demiaochen/caffeinate-disablesleep/releases/download/v1.0.0/caffeinate-disablesleep-#{version}.dmg",
      verified: "github.com/demiaochen/caffeinate-disablesleep/"
  name "caffeinate & disablesleep"
  desc "Keep your Mac awake from the menu bar, even with the lid closed"
  homepage "https://cnd.demiao.cc/"

  depends_on macos: :sonoma

  app "caffeinate & disablesleep.app"

  # Quitting first lets the app release `pmset disablesleep` on its way out, so
  # an uninstall never leaves the Mac unable to sleep.
  uninstall quit: "com.demiao.caffeinate-disablesleep"

  zap delete: "/etc/sudoers.d/caffeinate-disablesleep",
      trash:  "~/Library/Preferences/com.demiao.caffeinate-disablesleep.plist"
end

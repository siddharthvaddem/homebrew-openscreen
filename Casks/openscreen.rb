cask "openscreen" do
  version "1.4.0"

  on_arm do
    sha256 "0914ac10d9c1c0ef143eb8bbca7c3491f253e965b6312bbddeb9bfd1c3ee3122"

    url "https://github.com/siddharthvaddem/openscreen/releases/download/v#{version}/Openscreen-mac-installer.dmg"
  end
  on_intel do
    sha256 "cdccf6da3a2cce4ed3666bb0c3f66003126f4a641cd6a56b7845b5906207b091"

    url "https://github.com/siddharthvaddem/openscreen/releases/download/v#{version}/Openscreen-Mac-x64-Installer.dmg"
  end

  name "Openscreen"
  desc "Screen recorder and video editor"
  homepage "https://github.com/siddharthvaddem/openscreen"

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/Openscreen",
    "~/Library/Caches/com.siddharthvaddem.openscreen",
    "~/Library/Logs/Openscreen",
    "~/Library/Preferences/com.siddharthvaddem.openscreen.plist",
    "~/Library/Saved Application State/com.siddharthvaddem.openscreen.savedState",
  ]
end

cask "openscreen" do
  version "1.5.0"

  on_arm do
    sha256 "bf2e3cdb25d1d5d71217992c91852598463a9db303ceb2639cb91094fedb9975"

    url "https://github.com/siddharthvaddem/openscreen/releases/download/v#{version}/Openscreen-Mac-arm64-.dmg"
  end
  on_intel do
    sha256 "f00d2763a2317512b8403eb32def8888d4511ce24187cdc6d1ee722fa9aa5b3c"

    url "https://github.com/siddharthvaddem/openscreen/releases/download/v#{version}/Openscreen-Mac-x64-.dmg"
  end

  name "Openscreen"
  desc "Screen recorder and video editor"
  homepage "https://github.com/siddharthvaddem/openscreen"

  auto_updates false
  depends_on macos: :big_sur

  app "Openscreen.app"

  zap trash: [
    "~/Library/Application Support/Openscreen",
    "~/Library/Caches/com.siddharthvaddem.openscreen",
    "~/Library/Logs/Openscreen",
    "~/Library/Preferences/com.siddharthvaddem.openscreen.plist",
    "~/Library/Saved Application State/com.siddharthvaddem.openscreen.savedState",
  ]
end

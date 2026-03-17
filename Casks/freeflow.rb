cask "freeflow" do
  version "0.1.0-rc.5"
  sha256 "2d5d9ea442021625d8094b381deba583b9b6d9136622d1c404cb75302d350d5c"

  url "https://github.com/build-trust/freeflow/releases/download/v#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Press a hotkey, dictate naturally, polished text appears in any app."
  homepage "https://github.com/build-trust/freeflow"

  depends_on macos: ">= :sonoma"

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Preferences/computer.autonomy.freeflow.plist",
    "~/Library/Caches/computer.autonomy.freeflow",
    "~/Library/Application Support/FreeFlow",
  ]
end

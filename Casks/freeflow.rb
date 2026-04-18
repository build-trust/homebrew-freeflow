cask "freeflow" do
  version "0.1.0-rc.6"
  sha256 "223b1638a23963618dc02a54964aae26606ba54670bbcf01fa2fc0a41375877c"

  url "https://github.com/mrinalwadhwa/freeflow/releases/download/v#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Press a hotkey, dictate naturally, polished text appears in any app."
  homepage "https://github.com/mrinalwadhwa/freeflow"

  depends_on macos: ">= :sonoma"

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Preferences/computer.autonomy.freeflow.plist",
    "~/Library/Caches/computer.autonomy.freeflow",
    "~/Library/Application Support/FreeFlow",
  ]
end

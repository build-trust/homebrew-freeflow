cask "freeflow" do
  version "0.1.0-rc.1"
  sha256 "df4bae851f32a315dfa4f6000585fe982e30160a94ab19cd793885e6d13f3969"

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

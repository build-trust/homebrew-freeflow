cask "freeflow" do
  version "0.1.0-rc.3"
  sha256 "a2ed8797789b4dd72d2fb38b498227f6f2c77fe59c85032e6a6ebcb43ccef230"

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

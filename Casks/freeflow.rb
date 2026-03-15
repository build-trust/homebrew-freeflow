cask "freeflow" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/build-trust/freeflow/releases/download/v#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Hold a key, speak, release. Polished text appears at your cursor."
  homepage "https://github.com/build-trust/freeflow"

  depends_on macos: ">= :sonoma"

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Preferences/computer.autonomy.freeflow.plist",
    "~/Library/Caches/computer.autonomy.freeflow",
    "~/Library/Application Support/FreeFlow",
  ]
end

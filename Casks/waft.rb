cask "waft" do
  version "0.15.4"
  sha256 "2e9a2336226249a2f231f55d598198700de44f8ec1d8ec0049e53c3542594bbc"

  url "https://github.com/okoflow/waft/releases/download/v#{version}/Waft-#{version}.dmg"
  name "Waft"
  desc "On-device dictation with AI cleanup"
  homepage "https://waft.okoflow.com/"

  livecheck do
    url "https://github.com/okoflow/waft/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waft.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "-r", "com.apple.quarantine", "{{appdir}}/Waft.app"]
  end

  uninstall quit: "com.okoflow.waft"

  zap trash: [
    "~/Library/Application Support/Waft",
    "~/Library/Caches/com.okoflow.waft",
    "~/Library/HTTPStorages/com.okoflow.waft",
    "~/Library/HTTPStorages/com.okoflow.waft.binarycookies",
    "~/Library/Preferences/com.okoflow.waft.plist",
  ]
end

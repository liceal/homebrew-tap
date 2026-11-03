cask "maple" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "4811b5b429e37ff0919d10664abd77f6df5fc7418fcd78a739a9df1c41b8f0b2",
         intel: "8adac8fd3079ab2ae659d97b78d521b7ca1f227fb9c338013956b34474736ac7"

  url "https://github.com/liceal/Maple/releases/download/v#{version}/Maple-#{arch}.dmg"
  name "Maple"
  desc "极速多窗格双栏访达文件管理器"
  homepage "https://github.com/liceal/Maple"

  auto_updates true
  depends_on macos: :ventura

  app "Maple.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Maple.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.workbuddy.maple.plist",
    "~/Library/Saved Application State/com.workbuddy.maple.savedState",
  ]
end

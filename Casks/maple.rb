cask "maple" do
  arch arm: "arm64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://github.com/liceal/Maple/releases/latest/download/Maple-#{arch}.dmg"
  name "Maple"
  desc "极速多窗格双栏访达文件管理器"
  homepage "https://github.com/liceal/Maple"

  app "Maple.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Maple.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.workbuddy.maple.plist",
    "~/Library/Saved Application State/com.workbuddy.maple.savedState",
  ]
end

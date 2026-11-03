cask "maple" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "eff419cc1cfd9e8319e9f0246c79b382d4cab8bf91548c413e326848a536fc8f",
         intel: "1e2b5ee7cc9e4787c48fb4565fcf08d2882499fd87e3f6f2ca25aa30726aa9e6"

  url "https://github.com/liceal/Maple/releases/download/#{version}/Maple-#{version}-#{arch}.dmg"
  name "Maple"
  desc "极速多窗格双栏访达文件管理器"
  homepage "https://github.com/liceal/Maple"

  auto_updates true
  depends_on macos: :ventura

  app "Maple.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Maple.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.workbuddy.maple.plist",
    "~/Library/Saved Application State/com.workbuddy.maple.savedState",
  ]
end

cask "paper-overlay" do
  version "0.1.0"
  sha256 "2747be0aa0344c65a5576d646cf59c475977682fcceb6dee8d3ff230809320ce"

  url "https://github.com/Aoki-Dai/paper-overlay/releases/download/v#{version}/PaperOverlay-#{version}.zip"
  name "Paper Overlay"
  desc "Menu bar app that overlays a paper-like texture on the whole screen"
  homepage "https://github.com/Aoki-Dai/paper-overlay"

  depends_on macos: ">= :tahoe"

  app "PaperOverlay.app"

  zap trash: "~/Library/Preferences/com.d4ok1.PaperOverlay.plist"

  caveats <<~EOS
    Paper Overlay is not signed with an Apple Developer ID.
    The first time you open it, macOS will block it. To allow it:
      1. Try to open PaperOverlay.app once (close the warning dialog)
      2. Open System Settings > Privacy & Security and click "Open Anyway"

    Developer ID で署名していないため、初回は macOS に止められます。
    一度開こうとしたあと、「システム設定」→「プライバシーとセキュリティ」で
    「このまま開く」を押してください。
  EOS
end

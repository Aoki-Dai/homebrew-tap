cask "paper-overlay" do
  version "0.1.0"
  sha256 "2747be0aa0344c65a5576d646cf59c475977682fcceb6dee8d3ff230809320ce"

  url "https://github.com/Aoki-Dai/paper-overlay/releases/download/v#{version}/PaperOverlay-#{version}.zip"
  name "Paper Overlay"
  desc "Menu bar app that overlays a paper-like texture on the whole screen"
  homepage "https://github.com/Aoki-Dai/paper-overlay"

  depends_on macos: :tahoe

  app "PaperOverlay.app"

  zap trash: "~/Library/Preferences/com.d4ok1.PaperOverlay.plist"

  caveats <<~EOS
    Paper Overlay is not signed with an Apple Developer ID,
    so macOS blocks it the first time you open it. To allow it:
      1. Open PaperOverlay.app once. When the warning appears,
         click "Done" (do NOT click "Move to Trash").
      2. Open System Settings > Privacy & Security, scroll down,
         and click "Open Anyway". You can open the pane with:
           open "x-apple.systempreferences:com.apple.preference.security"

    Developer ID で署名していないため、初回は macOS に止められます。
      1. PaperOverlay.app を一度開き、警告が出たら「完了」で閉じる
         （「ゴミ箱に入れる」は押さない）
      2. 「システム設定」→「プライバシーとセキュリティ」を下までスクロールし、
         「このまま開く」を押す（上の open コマンドでも開けます）
    2 回目からは普通に開けます。
  EOS
end

cask "markflow" do
  version "0.1.1"
  sha256 "c9af1198367a983244416b8716ee9fec89048c65d0824b6d60f3e8f8018a2d19"

  url "https://github.com/mostlyfine/markflow/releases/download/v#{version}/MarkFlow.dmg"
  name "MarkFlow"
  desc "Markdown viewer for macOS"
  homepage "https://github.com/mostlyfine/markflow"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MarkFlow.app"

  zap trash: [
    "~/Library/Application Support/com.example.markflow",
    "~/Library/Preferences/com.example.markflow.plist",
    "~/Library/Caches/com.example.markflow",
  ]
end

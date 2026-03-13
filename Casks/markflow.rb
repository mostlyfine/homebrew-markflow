cask "markflow" do
  version "0.1.3"
  sha256 "a3b47d6341d5df99281066d6da2a0f47bbe12f7f5ec8916552a8abfca4857e35"

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

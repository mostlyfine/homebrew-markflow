cask "markflow" do
  version "0.1.2"
  sha256 "086ba42e89ddfde4ca910fbeea4d43e700e4d4fe99179d33fe3ba378da3994cb"

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

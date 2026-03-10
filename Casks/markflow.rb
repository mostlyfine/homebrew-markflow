cask "markflow" do
  version "0.1.1"
  sha256 "dc579d362caa444030bca4db7157a1faa5a3d8402c86b73b32ac4e31b0e9b6ef"

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

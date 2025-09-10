class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/archive/refs/tags/0.0.2.tar.gz",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  sha256 "1d41366ca15b0ed46e28ba7b51ed41debec902bef7af0396eb493955e1c2d11c"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on macos: :monterey

  def install
    system "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
end
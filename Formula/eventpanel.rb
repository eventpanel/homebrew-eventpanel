class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/archive/refs/tags/0.0.1.tar.gz",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
      ]
  sha256 "1191a5d03b9dee7a7c1ee867ded1a7b198b027c7ffa7677238c44947a27ca0d0"
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
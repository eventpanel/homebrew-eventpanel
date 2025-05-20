class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/archive/refs/tags/0.0.1.tar.gz"
  sha256 "d046eeda781a8edec8a03518b65893056b8a8bb02f1f2602a7df64333f14a1e6"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on macos: :monterey

  def install
    system "swift", "build", "--configuration", "release"
    bin.install ".build/release/eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
end 
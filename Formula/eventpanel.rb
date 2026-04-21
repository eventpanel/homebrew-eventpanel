class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.3.3/eventpanel-macos.tar.gz"
  sha256 "ad6cbf6abed7854d3bce0aa6d8ac07c92f11e336961ad8d55a6e72f2f0a75899"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

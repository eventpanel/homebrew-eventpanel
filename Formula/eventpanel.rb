class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.4.1/eventpanel-macos.tar.gz"
  sha256 "42c3fc42fc2698559c4eb04adbe85423e6f37d8cc2327eef13c1b6f34bc3c6b3"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

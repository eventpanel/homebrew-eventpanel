class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.2.9/eventpanel-macos.tar.gz"
  sha256 "1dd0e5c7b9928e30ca117abcdb44ce2d3087cad1889201b15783cf0a3c3a9a4b"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

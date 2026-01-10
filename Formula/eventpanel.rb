class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli-releases/releases/download/v0.0.9/eventpanel-macos.tar.gz"
  sha256 "0a71519b96287dea9e76da142339a9dd9cea701bef231a3023d3c41b83b08778"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end
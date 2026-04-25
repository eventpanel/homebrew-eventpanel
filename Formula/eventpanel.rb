class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.4/eventpanel-macos.tar.gz"
  sha256 "b3c1da85acce8f4732a3691795969f38d07b109c511e691a83b922845e57c2e6"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

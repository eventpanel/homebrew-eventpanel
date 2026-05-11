class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.4.6/eventpanel-macos.tar.gz"
  sha256 "c0b21cfb15dddf92f7b9de9b460e533f922e3554718b4f2292118ec89762b470"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

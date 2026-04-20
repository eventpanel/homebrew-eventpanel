class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.3.2/eventpanel-macos.tar.gz"
  sha256 "00ca4edead31dbd76c826a384f7de9f6baa067b5990e70482603c5b97192d5d7"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

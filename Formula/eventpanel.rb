class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://eventpanel.net"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.2.5/eventpanel-macos.tar.gz"
  sha256 "6e83a98a3d1ada2a93f16935540bce8474adb198c5eb8b8be6bd3ae4224fe3ff"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

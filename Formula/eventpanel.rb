class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.0.8/eventpanel-macos.tar.gz"
  sha256 "07eea0a7cd3b99450884a5117868d5c7ffe5beac4159c1dc1d831f9aabdf37ab"
  license "Fair-Core-1.0-ALv2"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
  
end

class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v.0.0.5/eventpanel-macos.tar.gz"
  sha256 "6dda260ca03a8cd7d89b05fa30559f44023a1f824f31a33ed07e24dd6e399321"
  license "MIT"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
end

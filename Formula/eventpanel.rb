class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v.0.0.5/eventpanel-macos.tar.gz"
  sha256 "607b63b1c4e0d2219cbac6eb4d619aeee16777c7abe0f131726ef5d8383cc3d4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
end

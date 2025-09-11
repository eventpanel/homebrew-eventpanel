class Eventpanel < Formula
  desc "EventPanel CLI tool"
  homepage "https://github.com/eventpanel/eventpanel-cli"
  url "https://github.com/eventpanel/eventpanel-cli/releases/download/v0.0.3/eventpanel-macos.tar.gz"
  sha256 "0b42fca6b8944f3264432f643d81404a84be7afd92d7537bceb76ce766566121"
  license "MIT"

  depends_on :macos

  def install
    bin.install "eventpanel-macos" => "eventpanel"
  end

  test do
    system "#{bin}/eventpanel", "--version"
  end
end
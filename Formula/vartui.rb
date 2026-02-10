class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.2.0/vartui-v0.2.0-darwin-arm64.tar.gz"
      sha256 "364bc1215d4993bf6350b5f6004edcdc1c09440ed98246b53886c827b9cf3cf8"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.2.0/vartui-v0.2.0-darwin-x86_64.tar.gz"
      sha256 "c4f78c6b515be82383a3ad1a9b99077180ed344c6c3b79fa2a88e2fec77bf5d6"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

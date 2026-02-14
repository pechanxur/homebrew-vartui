class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.6.0/vartui-v0.6.0-darwin-arm64.tar.gz"
      sha256 "1947b6af34fb7cce8e6caa47cbca5bcaf3f041ba877149af9cd9160b486a997f"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.6.0/vartui-v0.6.0-darwin-x86_64.tar.gz"
      sha256 "0242b7a9f31eb93fe2add853c9ba72cbfeaea0b56203120be1168414145b09f0"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.5.0/vartui-v0.5.0-darwin-arm64.tar.gz"
      sha256 "06bf6fd4242f42e926c9b52101fdf4d49511d69ee75a2dc519ea1bbe506614f0"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.5.0/vartui-v0.5.0-darwin-x86_64.tar.gz"
      sha256 "0d72e721447c88448b5f38c66db588dd4caee4b9430d08ac4211329a72fa7fab"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

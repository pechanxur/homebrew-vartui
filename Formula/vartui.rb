class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.3.0/vartui-v0.3.0-darwin-arm64.tar.gz"
      sha256 "c8d412514e45b2abdd2f601cb4620fac36ae4060ef630f11a500e4132091f1a5"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.3.0/vartui-v0.3.0-darwin-x86_64.tar.gz"
      sha256 "0ecb709fee3e0fb719f40dba32d25186356da490e695e9115bca221df0d8159a"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

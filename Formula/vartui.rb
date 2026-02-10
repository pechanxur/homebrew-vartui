class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.1.1/vartui-v0.1.1-darwin-arm64.tar.gz"
      sha256 "2b2067d96d15d2ea032f871d32349f977037c9d4e99705dc226d7c4eab9fab98"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.1.1/vartui-v0.1.1-darwin-x86_64.tar.gz"
      sha256 "4671679fbaf9a7c58c0fce1b3e3e0abe5e8edbd5a9151d76ef1091ae116e351a"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

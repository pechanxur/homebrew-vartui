class Vartui < Formula
  desc "Terminal timesheet TUI and JSON CLI for VAR"
  homepage "https://github.com/pechanxur/vartui"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/pechanxur/vartui/releases/download/v0.4.0/vartui-v0.4.0-darwin-arm64.tar.gz"
      sha256 "87b962a7022ef2cbfec453b06a5fb62f6c2138b862633aaad65a383143862a92"
    end

    on_intel do
      url "https://github.com/pechanxur/vartui/releases/download/v0.4.0/vartui-v0.4.0-darwin-x86_64.tar.gz"
      sha256 "215f0a31b309d3f1fd42bad6aa620ea53d7afbb69bac08216308126dfa01eb2a"
    end
  end

  def install
    bin.install "vartui"
  end

  test do
    assert_match "api <subcomando>", shell_output("#{bin}/vartui --help")
  end
end

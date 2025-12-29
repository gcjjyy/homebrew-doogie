class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.0/doogie-cli-macos-arm64.tar.gz"
      sha256 "874dbc269f2aa1f8801ce712808af20f4bf631f902650afe6e8053576c481037"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.0/doogie-cli-macos-x64.tar.gz"
      sha256 "ce70ae38134b2486327c9c75bf3954d6d6b1c1fc19ed12861cc134b0d614e55a"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.0/doogie-cli-linux-x64.tar.gz"
      sha256 "d3844c63d1254cbef3208821ef5067d8c9188b5075fc03a93c689c7b3c62e658"

      def install
        libexec.install "doogie-cli-linux-x64"
        bin.install_symlink libexec/"doogie-cli-linux-x64" => "doogie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doogie --version", 2)
  end
end

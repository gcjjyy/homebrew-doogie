class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.6/doogie-cli-macos-arm64.tar.gz"
      sha256 "d8f034c2631273160e0957f27075482291c56890e637fe17a6c98fd72e7d275e"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.6/doogie-cli-macos-x64.tar.gz"
      sha256 "8390563214adc935e55d3c124f4a68b4bddf221807a3056696963187c0ac1818"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.6/doogie-cli-linux-x64.tar.gz"
      sha256 "a2fbfe36595c6e189a914610bc5b428ad26ebc01705ae39684d246ad660cf6ca"

      def install
        libexec.install "doogie-cli-linux-x64"
        bin.install_symlink libexec/"doogie-cli-linux-x64" => "doogie"
      end
    end

    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.6/doogie-cli-linux-arm64.tar.gz"
      sha256 "c4763b178417902e1662a9c48c18c4f568dfb1b928a0bec08e3f006e9ca85564"

      def install
        libexec.install "doogie-cli-linux-arm64"
        bin.install_symlink libexec/"doogie-cli-linux-arm64" => "doogie"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doogie --version", 2)
  end
end

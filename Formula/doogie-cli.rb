class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.8/doogie-cli-macos-arm64.tar.gz"
      sha256 "d5098311e633277b1baa5d451ce456c76a53f6ae060fb9e51fc71a53ba8da8d0"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.8/doogie-cli-macos-x64.tar.gz"
      sha256 "07415b95b77366f6b650e787f8f26cd9dc7cb4f9d3c369acedadce126c0c9e5e"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.8/doogie-cli-linux-x64.tar.gz"
      sha256 "32ed79b7bf172ade88df7050876d5049a9027b8b107cfcfa2687fc67b2ee6737"

      def install
        libexec.install "doogie-cli-linux-x64"
        bin.install_symlink libexec/"doogie-cli-linux-x64" => "doogie"
      end
    end

    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.8/doogie-cli-linux-arm64.tar.gz"
      sha256 "84219cb3a0a4bee80de739f94d270c87dc341f469390432c4b6fb619d3b897a7"

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

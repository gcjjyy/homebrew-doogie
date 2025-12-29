class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.3/doogie-cli-macos-arm64.tar.gz"
      sha256 "18675651d0177f4aaab6a95dc5ddc563e3d849617aea6053836590b29d2c98a5"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.3/doogie-cli-macos-x64.tar.gz"
      sha256 "cfc96524e4242bf8749096318dbf153970074195fb71b3c027b3fafe2a51b38b"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.3/doogie-cli-linux-x64.tar.gz"
      sha256 "ccd3a1cf8f39e6a7b9ffaf4a299a0e6401cb7ccfb571448299e8c2f530864b73"

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

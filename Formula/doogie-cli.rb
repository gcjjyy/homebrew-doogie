class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.7/doogie-cli-macos-arm64.tar.gz"
      sha256 "6b61aeac0ae7e355f467c9d3d7b0eb1fd76cd6c0f43d66b4af9f0b8de6bb6616"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.7/doogie-cli-macos-x64.tar.gz"
      sha256 "55cfbdf3310e6db745e166b5cc5f5ebf510df3cf65bcace0c33956e7b20f805e"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.7/doogie-cli-linux-x64.tar.gz"
      sha256 "aae1357f13073a57f50acf524fadbd39b8e656aee6128b31f249cfff65b738e4"

      def install
        libexec.install "doogie-cli-linux-x64"
        bin.install_symlink libexec/"doogie-cli-linux-x64" => "doogie"
      end
    end

    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.7/doogie-cli-linux-arm64.tar.gz"
      sha256 "ae168c06312f2c40a4e70c30409df7a0f44d0c27f7e00cdafdc9fe23952a271f"

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

class DoogieCli < Formula
  desc "두기의 고전게임 런처 CLI - macOS/Linux용 DOS/Windows 게임 런처"
  homepage "https://github.com/gcjjyy/doogie-cli"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.5/doogie-cli-macos-arm64.tar.gz"
      sha256 "1452ca77a291c7e5ccb51070ee82a8bf1b0f3ce23df89b291ebf86f929741e59"

      def install
        libexec.install "doogie-cli-macos-arm64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-arm64" => "doogie"
      end
    end

    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.5/doogie-cli-macos-x64.tar.gz"
      sha256 "423b35128e8060222996f7dba3cf953c9ba855974b200694408babf480b54985"

      def install
        libexec.install "doogie-cli-macos-x64"
        libexec.install "executers"
        bin.install_symlink libexec/"doogie-cli-macos-x64" => "doogie"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.5/doogie-cli-linux-x64.tar.gz"
      sha256 "2b9e267d59f546c4208521faa0ea22173d86802226db0f7f085009790fba43f6"

      def install
        libexec.install "doogie-cli-linux-x64"
        bin.install_symlink libexec/"doogie-cli-linux-x64" => "doogie"
      end
    end

    on_arm do
      url "https://github.com/gcjjyy/doogie-cli/releases/download/v1.0.5/doogie-cli-linux-arm64.tar.gz"
      sha256 "90f59fc8465f9e6e0d18696b7c1cfe57c38bed017174dd2258512edc52dd5905"

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

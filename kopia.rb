# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231202.0.173400"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231202.0.173400/kopia-20231202.0.173400-macOS-x64.tar.gz"
    sha256 "a7917b8b7e0f01edbee858c23e23fa30ef745450bf2bd54213835fb4ba1a91d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231202.0.173400/kopia-20231202.0.173400-macOS-arm64.tar.gz"
    sha256 "1df14bdc8d6db62de35690b212f37e80927e63de2c5eb920d29916c701762163"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231202.0.173400/kopia-20231202.0.173400-linux-x64.tar.gz"
    sha256 "06abb516c3a73346f868fc7206371d7873438eaa79fe4e6e4864c13952c32808"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231202.0.173400/kopia-20231202.0.173400-linux-arm.tar.gz"
    sha256 "3d36e92d5dfa82d818d28da41ec43b6d313d13dbe87a2ea3f7c5d77f6cb15273"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231202.0.173400/kopia-20231202.0.173400-linux-arm64.tar.gz"
    sha256 "b0067c63724f6b935153f3f8df53b05c2888314cebbbf9dea0deac0c35c143bb"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210409.0.72735"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.72735/kopia-20210409.0.72735-macOS-x64.tar.gz"
    sha256 "88a4c7a0576f9c6ea93719ef550fc5771771a3deb9978b076f8d2ab84dc81597"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.72735/kopia-20210409.0.72735-macOS-arm64.tar.gz"
    sha256 "bce298c6effa4ad3b1d16795a66f8ff73887bf89c6db1a3f2c7a3f145f31546a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.72735/kopia-20210409.0.72735-linux-x64.tar.gz"
    sha256 "df4f09c19d2af1541d4c158dabc45e7cfd281679031e54649aebcbedc00397a7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.72735/kopia-20210409.0.72735-linux-arm.tar.gz"
    sha256 "6a2013be7352b7eb9f03aa9d98dd74d154659a498a54e402a1d1241b92d405ff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.72735/kopia-20210409.0.72735-linux-arm64.tar.gz"
    sha256 "bdc261908ae77cab7fc143a41d0c3fde8a268535340e5d7c86a2d67d453e462a"
  end

  def install
    bin.install "kopia"
  end
end

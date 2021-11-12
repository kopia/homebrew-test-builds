# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211111.0.170311"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.170311/kopia-20211111.0.170311-macOS-x64.tar.gz"
    sha256 "3db59612575edb98cffefc8a4eae5c52d66c44816f284f6b3fcf2f43ea5db40f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.170311/kopia-20211111.0.170311-macOS-arm64.tar.gz"
    sha256 "94251cb82d88a1089a182a35ca60d629a620c5b1c69d33300e5c7dac1624233c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.170311/kopia-20211111.0.170311-linux-x64.tar.gz"
    sha256 "c98b6b6bd621175d9d7cc148d4d07d706c6a6dc74d75fa3df56fb4657b6e8e0b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.170311/kopia-20211111.0.170311-linux-arm.tar.gz"
    sha256 "26fa04864b9f54d9f34f92d1ecacad81283a639c047a5abb2b6fc0092f6a7f2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211111.0.170311/kopia-20211111.0.170311-linux-arm64.tar.gz"
    sha256 "3d8ffd60496f536f85dcff6a24d30d2534266ba1368b65129039c9dda36281ab"
  end

  def install
    bin.install "kopia"
  end
end

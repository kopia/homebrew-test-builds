# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.202742"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.202742/kopia-20251113.0.202742-macOS-x64.tar.gz"
    sha256 "ccf6ea8df3a998efde690eff5ae5ce314bfe172adbb0a1f5bede2186293508a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.202742/kopia-20251113.0.202742-macOS-arm64.tar.gz"
    sha256 "e6e9975ea6ada67364b9c852dbb7b7a464f82424f40853ee7757c6d4911336fd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.202742/kopia-20251113.0.202742-linux-x64.tar.gz"
    sha256 "45032a0e7372f8a46d66b3a202634983e3de2160733e47bd516822a64c376224"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.202742/kopia-20251113.0.202742-linux-arm.tar.gz"
    sha256 "120653188e0817c0113267272b45d3086758f5abba6c4b7fd1cf22c84f75cf4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.202742/kopia-20251113.0.202742-linux-arm64.tar.gz"
    sha256 "94c3f27e746ae1a774378d7536d3c125b6ac9f8b172bd03b6d5d56d6c3c97e84"
  end

  def install
    bin.install "kopia"
  end
end

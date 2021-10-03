# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.120417"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.120417/kopia-20211003.0.120417-macOS-x64.tar.gz"
    sha256 "e379a0a1cf17e40aa4e3fa9061c3d6e4b04e7e561e36b6eafd5316eac2273a8e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.120417/kopia-20211003.0.120417-macOS-arm64.tar.gz"
    sha256 "730f2e4ab7884809b104758d97170c8c8fe734e2356ea46459f0e48899722c9c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.120417/kopia-20211003.0.120417-linux-x64.tar.gz"
    sha256 "8cd18a5d100e80a85e2e3956fd2597750115712db841579489b12bf5265ab877"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.120417/kopia-20211003.0.120417-linux-arm.tar.gz"
    sha256 "578a6b1f411e53dcfb3ce8a9e1654285dcac9ee5b2f012b081b2d18d7d2608bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.120417/kopia-20211003.0.120417-linux-arm64.tar.gz"
    sha256 "a060ec7d3281e0215233dc53db5b516b37fd0afff3f65030d080616b7e255ad2"
  end

  def install
    bin.install "kopia"
  end
end

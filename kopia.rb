# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211015.0.71236"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211015.0.71236/kopia-20211015.0.71236-macOS-x64.tar.gz"
    sha256 "4d22bde5e8dcdb696fdb62d82741ef160ebc41cfb11e0ba9efba9b083313433f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211015.0.71236/kopia-20211015.0.71236-macOS-arm64.tar.gz"
    sha256 "238ad702f0024bc23bcb66e1ca0543bb8a82c4fa0e6a4e0e92ed1e40ffea3bef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211015.0.71236/kopia-20211015.0.71236-linux-x64.tar.gz"
    sha256 "45696cc466d0f7fdfc16fd8f5c4727e0b9ae8e4b837b96f97f56bdcffa4e503a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211015.0.71236/kopia-20211015.0.71236-linux-arm.tar.gz"
    sha256 "78003b0059aa573dfb52e68d52e3df60323b7b66c2aa31bb7e0ae27afd2bf34c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211015.0.71236/kopia-20211015.0.71236-linux-arm64.tar.gz"
    sha256 "3e6831b8e194d19d99f42191f2bc56c617997308a8f9519ebb3f2ef9c2c63a74"
  end

  def install
    bin.install "kopia"
  end
end

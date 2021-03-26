# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210326.0.143320"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210326.0.143320/kopia-20210326.0.143320-macOS-x64.tar.gz"
    sha256 "1469f250c8826c4b69b7b6b978449af398155160d1fee620d03621d88e884f90"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210326.0.143320/kopia-20210326.0.143320-macOS-arm64.tar.gz"
    sha256 "3307f96ff4f5b4055e3da1e6715931af8cdd61ef9d50dd9d27047a6e537a1061"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210326.0.143320/kopia-20210326.0.143320-linux-x64.tar.gz"
    sha256 "0aba2e668d8c8ee936864a3f3cb2405c02195db360fe0023ead66063781b6926"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210326.0.143320/kopia-20210326.0.143320-linux-arm.tar.gz"
    sha256 "31e23825f4c607500ac91b012918ed1f8c86a0701e4dfab7f5939f2251bc634d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210326.0.143320/kopia-20210326.0.143320-linux-arm64.tar.gz"
    sha256 "d8f26e79680937d92bd415765a474e9ecdcf940d08115faf466233c7826c91e8"
  end

  def install
    bin.install "kopia"
  end
end

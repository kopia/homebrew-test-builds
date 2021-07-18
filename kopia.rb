# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.201020"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201020/kopia-20210717.0.201020-macOS-x64.tar.gz"
    sha256 "5a0391e74a0cd105841a995f3b1a7ba025a7ef7d5cac30e517beba914cd2ce2c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201020/kopia-20210717.0.201020-macOS-arm64.tar.gz"
    sha256 "b14328edc3d75d21bd2a258244dd97d57211a01c45ffe78e013990e1e3b8e3f9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201020/kopia-20210717.0.201020-linux-x64.tar.gz"
    sha256 "7b7dcaa4e53910d0b3fb0a8223e28aba5607938e3bd0be9d0fbab76ac3d17fb5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201020/kopia-20210717.0.201020-linux-arm.tar.gz"
    sha256 "767c3cf0244b43267d4337dea7972815fccaee12f43068cb1ca94734c85498ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.201020/kopia-20210717.0.201020-linux-arm64.tar.gz"
    sha256 "ab2b0204a72f1a203fb7a30d77bf4c220970be4d966a8c171c22a99c55e3f2f8"
  end

  def install
    bin.install "kopia"
  end
end

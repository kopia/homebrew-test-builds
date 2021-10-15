# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211014.0.232107"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.232107/kopia-20211014.0.232107-macOS-x64.tar.gz"
    sha256 "202d9c10b5afdddc4fd84b07f50e05c011ddde5a9a38f11ac73d86e0cb6d73de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.232107/kopia-20211014.0.232107-macOS-arm64.tar.gz"
    sha256 "1eaf24241160a621a2cf32cd244145979e7616b64762fa79c6bf83dad559dcb4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.232107/kopia-20211014.0.232107-linux-x64.tar.gz"
    sha256 "97624925ca8fafc1c5d3797fa8a0caa2ec470143de027dbd5a8ef60e56c98826"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.232107/kopia-20211014.0.232107-linux-arm.tar.gz"
    sha256 "14ad6f8ba2ab06ef0bab60a397d7c2f210b17f7dfcfdd845f36d53902f3bfcdf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.232107/kopia-20211014.0.232107-linux-arm64.tar.gz"
    sha256 "61c678a55fa1a0ca747f57ff0b08084d6f05628ff72507895fc13f80dbcd4e01"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241030.0.91812"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241030.0.91812/kopia-20241030.0.91812-macOS-x64.tar.gz"
    sha256 "b09e3a91769688d9ae9c785b53ab0cfb331baf99a68a6b19147c2d6a8bd203a6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241030.0.91812/kopia-20241030.0.91812-macOS-arm64.tar.gz"
    sha256 "8f9b4efac1d2ed5023b9d6e10660984bb20aa7ca6fd4e9b2fec354adcfdab3b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241030.0.91812/kopia-20241030.0.91812-linux-x64.tar.gz"
    sha256 "6677cba464bb58cf7220405bd53b6ea71479e8e2f7b42d5e8fc6278d01cbfef2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241030.0.91812/kopia-20241030.0.91812-linux-arm.tar.gz"
    sha256 "048ab8889f81bad8024b9ec474e31f5b3b761354133ae8a6fcb6922aa8d01563"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241030.0.91812/kopia-20241030.0.91812-linux-arm64.tar.gz"
    sha256 "8169a445d4417e2d3c8b5c33ad5942ef3c3563f81cc36a0702ac9d53be338569"
  end

  def install
    bin.install "kopia"
  end
end

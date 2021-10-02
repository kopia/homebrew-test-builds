# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.100933"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100933/kopia-20211002.0.100933-macOS-x64.tar.gz"
    sha256 "95542cbd4347010225a953aac64f1f11ce9437aef415c458b9f2122aa2519a65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100933/kopia-20211002.0.100933-macOS-arm64.tar.gz"
    sha256 "558806c1f2ca9fcbcf4cf46d65f331fdb529c8b5bb4e5026d377f14410d2c0ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100933/kopia-20211002.0.100933-linux-x64.tar.gz"
    sha256 "011bb465bb69d4e8aed74c167193e7e5356d9004dc01d30fea0585cfbffa31b6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100933/kopia-20211002.0.100933-linux-arm.tar.gz"
    sha256 "4de3793d0f689489146dd752d000bf5122894a4a474352c5324fc4024b1be3e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.100933/kopia-20211002.0.100933-linux-arm64.tar.gz"
    sha256 "333548df68cee3ee2418a1fa92a5666eabab4658fb8b1e17922d2e5818e77e9b"
  end

  def install
    bin.install "kopia"
  end
end

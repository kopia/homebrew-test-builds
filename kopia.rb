# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.151753"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151753/kopia-20210516.0.151753-macOS-x64.tar.gz"
    sha256 "4216a4e4d3aa8a871c0835e6664eb9332ffadaaff47c6ed5a6254021fe73f8f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151753/kopia-20210516.0.151753-macOS-arm64.tar.gz"
    sha256 "f4a3cdec147208ff74dc67b07c433785a69828aa5e1ee8a92daa2ae733f0c09a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151753/kopia-20210516.0.151753-linux-x64.tar.gz"
    sha256 "9af07620fc4f0366466c6c95216c795e7a1599864a434ca757a828322307f0ec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151753/kopia-20210516.0.151753-linux-arm.tar.gz"
    sha256 "c5595e5ad116c0096bf85f1cdeeca8ea28703c3ac864e26e27a4da66562d91e6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151753/kopia-20210516.0.151753-linux-arm64.tar.gz"
    sha256 "4d46a7ab2e38c310f9aa551dac79802c722f998fae926b33911fbe8c712816d3"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.151703"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151703/kopia-20210516.0.151703-macOS-x64.tar.gz"
    sha256 "2f3dd418c138d2e8928ee02cb49e892d81cc203673d37ff335cadce6505b0cd9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151703/kopia-20210516.0.151703-macOS-arm64.tar.gz"
    sha256 "b531a220c884edde680ea65b8e40df170fecdbccd2c8650709efe16ed1e2fd62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151703/kopia-20210516.0.151703-linux-x64.tar.gz"
    sha256 "333ef0dfe1253f3f314549f5961c0dd6c4000903b9d1e165015151f785af87b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151703/kopia-20210516.0.151703-linux-arm.tar.gz"
    sha256 "88087722bf88191f974cddee568b9c6b952185a46b161ad1e569718bd01e8579"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151703/kopia-20210516.0.151703-linux-arm64.tar.gz"
    sha256 "0b4556a9b8368a96a6d25ad2d231bc2f77f25cc08e723fed3e31a14317b2402e"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210914.0.191139"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.191139/kopia-20210914.0.191139-macOS-x64.tar.gz"
    sha256 "5380f6c76c1b38304ea75546521686c710dc08ec1c6e0a3f2fbc288168db9907"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.191139/kopia-20210914.0.191139-macOS-arm64.tar.gz"
    sha256 "76945c5ca4c9facf44feb2d7ffe0148dad05462c53e6b206205d0b7bd015aedb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.191139/kopia-20210914.0.191139-linux-x64.tar.gz"
    sha256 "ff4e2da89b8fe27179bd600396cc52877fbab7f5869fa18ff04df44610fd1274"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.191139/kopia-20210914.0.191139-linux-arm.tar.gz"
    sha256 "fb406c6132143886ac8f067b96568490b4acccf500f1dfc53ce71a1d2845461a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.191139/kopia-20210914.0.191139-linux-arm64.tar.gz"
    sha256 "98859d2fbb2c9c02c3f0605e6b71969e6517967250d63f83b580ffb3c46d0141"
  end

  def install
    bin.install "kopia"
  end
end

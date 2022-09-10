# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.134051"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.134051/kopia-20220910.0.134051-macOS-x64.tar.gz"
    sha256 "4be2c81b25a9e40990c451b69c3768aaedac48c536a851278408e6d85494f81e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.134051/kopia-20220910.0.134051-macOS-arm64.tar.gz"
    sha256 "1fbed1d5d97f75d2d4cdbc39fb78a7b663fd67731cd2612c5c7f2c5672163cb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.134051/kopia-20220910.0.134051-linux-x64.tar.gz"
    sha256 "aa20e605ab0ab3ba44710e56f2807fccb04b0a5c346d0a05d66446c72745fae5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.134051/kopia-20220910.0.134051-linux-arm.tar.gz"
    sha256 "a27691b0e649079907c164522f1cdcca01a2ed4a319cda67b9b692d8edc1a678"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.134051/kopia-20220910.0.134051-linux-arm64.tar.gz"
    sha256 "9930c9bbca2fb38f6a907ad60843edd86400e042f060f244cfa35c4d915be781"
  end

  def install
    bin.install "kopia"
  end
end

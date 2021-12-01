# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211130.0.214041"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211130.0.214041/kopia-20211130.0.214041-macOS-x64.tar.gz"
    sha256 "03b9bb96f8b33f02b786f917683997f52b217b9ef595a5f5d6eef05866dffaf4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211130.0.214041/kopia-20211130.0.214041-macOS-arm64.tar.gz"
    sha256 "7a2c1335213a25f12de75e16ea311f65fdfcfa317f92cc5d29868f0dace01468"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211130.0.214041/kopia-20211130.0.214041-linux-x64.tar.gz"
    sha256 "d9956a294ded90d277c187548caa7915950dfee143570d4e56afb9a92e75d4c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211130.0.214041/kopia-20211130.0.214041-linux-arm.tar.gz"
    sha256 "ea7fcd3ee76e34d1dbb341ef78dfb9d3aa219b2b29fd3cc730ea9a43d2f81f7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211130.0.214041/kopia-20211130.0.214041-linux-arm64.tar.gz"
    sha256 "e179e71641e6d96f1bcdd41e0a94c6d43c3872106e1c888f3757031d23f76554"
  end

  def install
    bin.install "kopia"
  end
end

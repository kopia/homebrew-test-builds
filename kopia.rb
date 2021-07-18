# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.185437"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.185437/kopia-20210717.0.185437-macOS-x64.tar.gz"
    sha256 "6bde6f2b508bf14e73ccc6e48ce7bd5b21ffd1767a1f169ad60e67344b6bb018"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.185437/kopia-20210717.0.185437-macOS-arm64.tar.gz"
    sha256 "8efbc0c11bcbf6fd081282ca2cc1d24f17469d5c6f3cb05326b48859f0523399"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.185437/kopia-20210717.0.185437-linux-x64.tar.gz"
    sha256 "a2e962ad3d7d681967a84fd26da17956779762491250b8807ae5523cd155992b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.185437/kopia-20210717.0.185437-linux-arm.tar.gz"
    sha256 "f79af9b1a72dcbff29828e6c3dfd0c114c05456d9c5d3bdf1a5a5d1b5270cc53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.185437/kopia-20210717.0.185437-linux-arm64.tar.gz"
    sha256 "e4f5a4db1d482cdbc2c7dfa3be72d39d41fbf11c134fcb2b15c15986ee4a82d3"
  end

  def install
    bin.install "kopia"
  end
end

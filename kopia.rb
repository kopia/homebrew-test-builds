# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.122141"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.122141/kopia-20211213.0.122141-macOS-x64.tar.gz"
    sha256 "011ca0c47382c34dcbcf608d545b530f9049a6d1c2d79a6478319bb76ce2b990"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.122141/kopia-20211213.0.122141-macOS-arm64.tar.gz"
    sha256 "7eaaabcbea23cdfb90557ae96e98061847daaa99b9c30568cb098bfb753dbbf6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.122141/kopia-20211213.0.122141-linux-x64.tar.gz"
    sha256 "aef2990c1804fbf51c419a0a42e05640ac3866995bc70708fcb691d431dbdc10"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.122141/kopia-20211213.0.122141-linux-arm.tar.gz"
    sha256 "1db0f6773c5114b2228b6ca627fb4fcb4ce1f869b0e4924bc74b0847ad5354f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.122141/kopia-20211213.0.122141-linux-arm64.tar.gz"
    sha256 "a84fc9d163d4d97bbfc4f3000e413dc6b539a3ba6a083be12a7cc536b945905f"
  end

  def install
    bin.install "kopia"
  end
end

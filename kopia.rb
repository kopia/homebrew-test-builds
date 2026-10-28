# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261028.0.41131"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.41131/kopia-20261028.0.41131-macOS-x64.tar.gz"
    sha256 "d388d44fbf13287a91b0b60213175c09931a0835a32626025b2a3a46ec9f63e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.41131/kopia-20261028.0.41131-macOS-arm64.tar.gz"
    sha256 "2fa0a8cce2b323cf41378823cd5724f0f6a98bcb33498e405a26f7971e1a5a49"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.41131/kopia-20261028.0.41131-linux-x64.tar.gz"
    sha256 "390b5904756063f0cf3909d244d2cbb6b4d492e81934b93ed9ae611b325e5e10"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.41131/kopia-20261028.0.41131-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.41131/kopia-20261028.0.41131-linux-arm64.tar.gz"
    sha256 "a2d6c5c861fb9952cfbc3d09b6e875dc56bc20bbafe8bd9d00ddf7c84fadd037"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261009.0.21004"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.21004/kopia-20261009.0.21004-macOS-x64.tar.gz"
    sha256 "a7e33995dbf36c862bb5a0f45bffdf6bb5c0eb6538370ccbaa13143810b698f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.21004/kopia-20261009.0.21004-macOS-arm64.tar.gz"
    sha256 "665bd511d58b4cff278c395fa7dec8410cfafe66bee0fbe3a79e26231d3549e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.21004/kopia-20261009.0.21004-linux-x64.tar.gz"
    sha256 "0a5bddec3195d7ca978dc8d76aa617062f7b4cd769bb2fc5b223920ac85a5192"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.21004/kopia-20261009.0.21004-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261009.0.21004/kopia-20261009.0.21004-linux-arm64.tar.gz"
    sha256 "10d1c23ad9784793caa21ed410560b5ca6e70ae37f912dc67c899a7a5ce98f34"
  end

  def install
    bin.install "kopia"
  end
end

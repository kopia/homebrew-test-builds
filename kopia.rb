# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211205.0.221711"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.221711/kopia-20211205.0.221711-macOS-x64.tar.gz"
    sha256 "aade743d4428af625d6c021878a58ac61682ee57e0538c64d9a9a86311f6efec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.221711/kopia-20211205.0.221711-macOS-arm64.tar.gz"
    sha256 "253cc93d32d0cd404d46fa7a4398ff1fd2a33b8327c7bf0eec51b2dc95ebb294"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.221711/kopia-20211205.0.221711-linux-x64.tar.gz"
    sha256 "2a4b51255892db0ab5d411e19ebaff044a95ea140056c7a8e6208771329709b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.221711/kopia-20211205.0.221711-linux-arm.tar.gz"
    sha256 "e7be1a1575df124f7ac88b596720dd187d9406e38c6de69e5a2139cfb1a2b15e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.221711/kopia-20211205.0.221711-linux-arm64.tar.gz"
    sha256 "434895310227f12f5778db7b97d32347846d404318522dd193d09f1fa89d4a3c"
  end

  def install
    bin.install "kopia"
  end
end

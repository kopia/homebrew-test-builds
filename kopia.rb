# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.215339"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215339/kopia-20220202.0.215339-macOS-x64.tar.gz"
    sha256 "14a7dd7fbd94a3ecc4c3caf445aa361011dc5a869c203de5e181f241f6b86169"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215339/kopia-20220202.0.215339-macOS-arm64.tar.gz"
    sha256 "4f651cf4516e4e9e5de19102281f0379d52b44fff54e58f22cd09211c5d929be"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215339/kopia-20220202.0.215339-linux-x64.tar.gz"
    sha256 "66e9cabbc570da44994e68b47f03241685d8cdc60ea82b3d0a1563d79dfb11ee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215339/kopia-20220202.0.215339-linux-arm.tar.gz"
    sha256 "ee561743943cdf51f3da1cf8e5428da421a7eea7e145ca0b1b02750e1c7b7cb3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215339/kopia-20220202.0.215339-linux-arm64.tar.gz"
    sha256 "9e64f0317072f206aaed506181ba53d268cb7466e40d23fad978d44af1676240"
  end

  def install
    bin.install "kopia"
  end
end

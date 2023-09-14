# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230913.0.164321"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230913.0.164321/kopia-20230913.0.164321-macOS-x64.tar.gz"
    sha256 "3cd3ae759bd0e26434c6992ab55b5020e3ddc2602910a7c97268a3ec796e3d45"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230913.0.164321/kopia-20230913.0.164321-macOS-arm64.tar.gz"
    sha256 "9c37a6ce333085812708e52d64f5830990b7cfd53451ee7a880ac6200c7c9dd9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230913.0.164321/kopia-20230913.0.164321-linux-x64.tar.gz"
    sha256 "b9ce6a8f80a62dc0f70ea914cf70386776d3c95faf5879d2e6a363d4dbbaaa33"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230913.0.164321/kopia-20230913.0.164321-linux-arm.tar.gz"
    sha256 "c73a0a2d695c3ef3e15c9f5c6691856b2bafb1e0b08910c7bc82bec84cecc56b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230913.0.164321/kopia-20230913.0.164321-linux-arm64.tar.gz"
    sha256 "f86f323ea96c77a55fb5e0ddbebc2a38033cf97520684885a755d5f23e75dd22"
  end

  def install
    bin.install "kopia"
  end
end

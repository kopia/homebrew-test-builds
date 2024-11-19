# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241118.0.213312"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.213312/kopia-20241118.0.213312-macOS-x64.tar.gz"
    sha256 "d72c528d60eb96093b20c92e74761f3805d62d62a67a7d789c3270a74c9a68fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.213312/kopia-20241118.0.213312-macOS-arm64.tar.gz"
    sha256 "f4dd0fc5ec9a885d5d81a1ed77f7c7199090bb4ef9ded3c3515a12ee052358af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.213312/kopia-20241118.0.213312-linux-x64.tar.gz"
    sha256 "5258b1edf64e64dc7f40f9960b718cbfb39cbd0dd7b99878d2aa61ef85f3fc00"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.213312/kopia-20241118.0.213312-linux-arm.tar.gz"
    sha256 "4a4423adffb3e4bf588d588ab4d512d23852305b85ca000ce360630f8fbeffc0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241118.0.213312/kopia-20241118.0.213312-linux-arm64.tar.gz"
    sha256 "adb79a8e684de0f61929b076836bc677fc6a1139e48c56791a8f254e9f2ddfef"
  end

  def install
    bin.install "kopia"
  end
end

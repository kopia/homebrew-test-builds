# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251114.0.30257"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.30257/kopia-20251114.0.30257-macOS-x64.tar.gz"
    sha256 "e9dee1cb913fd85731d64fe5f76ecebfcc1041c9d0d884fb6fa0b3c3cb892a31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.30257/kopia-20251114.0.30257-macOS-arm64.tar.gz"
    sha256 "3ddb06edbf01c3f92e3d38a53a429414e8bf3095be1a63fff2f596a5bcf72994"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.30257/kopia-20251114.0.30257-linux-x64.tar.gz"
    sha256 "af389b7ca5561cae09b7a97d2ebf366df6da402ded0f90c990ddeb232cd9e753"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.30257/kopia-20251114.0.30257-linux-arm.tar.gz"
    sha256 "563ff8bd0a741fccdd7c5e3f2948df7c406ca23ed71d437dc68c6dafcaa5f3d9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251114.0.30257/kopia-20251114.0.30257-linux-arm64.tar.gz"
    sha256 "152713a2835ed74ab37b11bef9b6f2c459dfd3d1140ebb4b812955fd98ad8482"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220926.0.44029"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.44029/kopia-20220926.0.44029-macOS-x64.tar.gz"
    sha256 "7b3cf161aff5c30ac7849a6522a0b53ebfb9e04c85657b5653d7f32e35370b8f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.44029/kopia-20220926.0.44029-macOS-arm64.tar.gz"
    sha256 "24b60709b9bb07549a97b962d2922020505a10cc325704817e16fea8a89c2c5d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.44029/kopia-20220926.0.44029-linux-x64.tar.gz"
    sha256 "8c99b6e2e6ff042ec8a8ad4251f0db3cc86ff070d436c129ac7e18dc50199eca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.44029/kopia-20220926.0.44029-linux-arm.tar.gz"
    sha256 "68c81e37a8eedf7262fd5bc0b1fe158a0341edbb52075c86ff795bea28150536"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.44029/kopia-20220926.0.44029-linux-arm64.tar.gz"
    sha256 "ea6104f6dea8e036368cdcefbb34ab8fd2988ec611d8d912f25cef1b0fc0bd72"
  end

  def install
    bin.install "kopia"
  end
end

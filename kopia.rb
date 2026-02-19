# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260219.0.42139"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.42139/kopia-20260219.0.42139-macOS-x64.tar.gz"
    sha256 "c39e66981b9167d2d0aa7fc9af84ad331f5afe114f00a733638426007de9e056"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.42139/kopia-20260219.0.42139-macOS-arm64.tar.gz"
    sha256 "1e3d2804b77f600574949d69202fc5f3b8c9c48297752462d23f801d3a5080e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.42139/kopia-20260219.0.42139-linux-x64.tar.gz"
    sha256 "023b960fbff59cd1a00de970d27b2eb175f20155417e59d1d1f3b5799289c22e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.42139/kopia-20260219.0.42139-linux-arm.tar.gz"
    sha256 "4b7db8688f0910e0b1000eb2e3d5c88e09260e35a755ad969ce55a333be40fef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.42139/kopia-20260219.0.42139-linux-arm64.tar.gz"
    sha256 "5b39711a055af47df6211ad3748a620d2159546ef49947acf0308708da646710"
  end

  def install
    bin.install "kopia"
  end
end

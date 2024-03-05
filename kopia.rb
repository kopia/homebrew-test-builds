# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240304.0.165815"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240304.0.165815/kopia-20240304.0.165815-macOS-x64.tar.gz"
    sha256 "c11b1aca4f2243a8bcdac2cbd60f0556d09b95b9187950be14a0af2ed1f7e88a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240304.0.165815/kopia-20240304.0.165815-macOS-arm64.tar.gz"
    sha256 "280d55f3c0c709ff2b7d6bf9d287514563cb0bf930e04724b39a0285c5ff0a15"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240304.0.165815/kopia-20240304.0.165815-linux-x64.tar.gz"
    sha256 "a86a11fc0e356ea806edee800815c74274ff5550147f142376d9a071b9d7921f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240304.0.165815/kopia-20240304.0.165815-linux-arm.tar.gz"
    sha256 "6489bd4ad6032cb9470114bdcbb61d3581d3d55e9a562aec90cd65e3e47d46c2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240304.0.165815/kopia-20240304.0.165815-linux-arm64.tar.gz"
    sha256 "5537fb16939680ad7781da4dbeab81e8ebeee84588c88cf7c766ab5aef049d0e"
  end

  def install
    bin.install "kopia"
  end
end

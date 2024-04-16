# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240416.0.144803"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240416.0.144803/kopia-20240416.0.144803-macOS-x64.tar.gz"
    sha256 "a18155ad4ed47c6899eb82827bf8e5171f5a2e872fd586806068f3cc9a1a881e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240416.0.144803/kopia-20240416.0.144803-macOS-arm64.tar.gz"
    sha256 "06e55b17c92fdc0ec8ce1111ce794440d6ed792126d8156fe8dcf9f2c2ed9e2b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240416.0.144803/kopia-20240416.0.144803-linux-x64.tar.gz"
    sha256 "52cdee737d2fe2b840855184916fe45730f9d950cf6df01ea73096a186294729"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240416.0.144803/kopia-20240416.0.144803-linux-arm.tar.gz"
    sha256 "6c6f0c47767cee4e9125beb551a01753623e3e64e4bfdaf5f02a0d3d5e16a8ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240416.0.144803/kopia-20240416.0.144803-linux-arm64.tar.gz"
    sha256 "f9a8009fad603b8f3fe4fa2c063c0c5914921f666817adf1ac069d96bbb27a2a"
  end

  def install
    bin.install "kopia"
  end
end

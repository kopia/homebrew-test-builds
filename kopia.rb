# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210608.0.201143"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210608.0.201143/kopia-20210608.0.201143-macOS-x64.tar.gz"
    sha256 "2e7cb6af3b0b3006122c77a200febc26348b2902183bcda5aa717d8e1302529e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210608.0.201143/kopia-20210608.0.201143-macOS-arm64.tar.gz"
    sha256 "fef40bce0c0dfee92128bd79df2c7cf306184e6ac846dfdf1c46507630efbad8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210608.0.201143/kopia-20210608.0.201143-linux-x64.tar.gz"
    sha256 "14f95948382f3627e2d2cfd5713536368ef8ab98f1064de402673482121349ad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210608.0.201143/kopia-20210608.0.201143-linux-arm.tar.gz"
    sha256 "4cb356e0f73bf66675d34e4dbbade37cdb9555ec78f895f3c59200891485987c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210608.0.201143/kopia-20210608.0.201143-linux-arm64.tar.gz"
    sha256 "63d7c599a4a937b0c2fe54d99da77807e1435c62146d8171ffe3aa9c079f2d08"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261103.0.53228"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.53228/kopia-20261103.0.53228-macOS-x64.tar.gz"
    sha256 "77e86df7f253b953e96718539f21e3005f54d2ac9ab44ac1f04a8925a52d9050"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.53228/kopia-20261103.0.53228-macOS-arm64.tar.gz"
    sha256 "b8eb7ee11f80bb272924af9b02d56fc7f08177c9990451858f9474dbb5f3ba2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.53228/kopia-20261103.0.53228-linux-x64.tar.gz"
    sha256 "232ae8bd417d0cd02a355ed5954c5c3fd874fe7da4e70404de7ae571e4b518f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.53228/kopia-20261103.0.53228-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261103.0.53228/kopia-20261103.0.53228-linux-arm64.tar.gz"
    sha256 "799883bbd613b59ed3f3613bd0100859b2b153daf743397a433f12b3896d27a3"
  end

  def install
    bin.install "kopia"
  end
end

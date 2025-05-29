# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.135350"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.135350/kopia-20250529.0.135350-macOS-x64.tar.gz"
    sha256 "12b1c7e360a4ec633e78f1ab4dc2eb748859f0526927985e4f91dc7d63682ab1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.135350/kopia-20250529.0.135350-macOS-arm64.tar.gz"
    sha256 "e051e72fb1af0e0db038883c0d71c1750cad60d0be81769ed11295de5212625c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.135350/kopia-20250529.0.135350-linux-x64.tar.gz"
    sha256 "12569fc8a73b6ebc1fd9285ea58275bc04ab1a654789d771544d3802f8c85f31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.135350/kopia-20250529.0.135350-linux-arm.tar.gz"
    sha256 "1cfbddb9c129d262f2114b8c3b0d31ea1cebad2da3e23f2113c19067a5442df7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.135350/kopia-20250529.0.135350-linux-arm64.tar.gz"
    sha256 "47e500dc7d6c33a93afc37489786028a75d2ff46edf7ee165e55f6a28a480cdb"
  end

  def install
    bin.install "kopia"
  end
end

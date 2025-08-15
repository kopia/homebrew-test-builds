# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250815.0.15307"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250815.0.15307/kopia-20250815.0.15307-macOS-x64.tar.gz"
    sha256 "e6cb8c217f6c6563ad73b10154a362d6352ddd58a30de47f7774e3b0f72eacc2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250815.0.15307/kopia-20250815.0.15307-macOS-arm64.tar.gz"
    sha256 "53c208eebddf63b4c3c0ea83f0a6659ac81b7d9bd848070e5c45bd5ddf0f5a91"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250815.0.15307/kopia-20250815.0.15307-linux-x64.tar.gz"
    sha256 "6e3e93ca676c7b6439f8c9ee006af12a59f0b92ff879f94fe78108526ead7de1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250815.0.15307/kopia-20250815.0.15307-linux-arm.tar.gz"
    sha256 "32d9e0a632cfa5fc7f7ad36b125b941ceb33e7314cbff8c33bd502979fdddc1e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250815.0.15307/kopia-20250815.0.15307-linux-arm64.tar.gz"
    sha256 "82f41085d8bf4b403b43acd2533630272f937f6e1d584221639c2aca6bfe8948"
  end

  def install
    bin.install "kopia"
  end
end

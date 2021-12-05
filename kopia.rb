# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211205.0.124505"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.124505/kopia-20211205.0.124505-macOS-x64.tar.gz"
    sha256 "4511e841e009cbeb06d029dc6387e45a1c553ac05551c263cd0553640de9b6fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.124505/kopia-20211205.0.124505-macOS-arm64.tar.gz"
    sha256 "61ac95460e38e0c85a54c281e2e0e275f7da646d842b233ed8f6d25df6fe6206"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.124505/kopia-20211205.0.124505-linux-x64.tar.gz"
    sha256 "df67f66c22f95a513302b526da11350bcbb5c53ac2f865cbf544d3e36e73b32d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.124505/kopia-20211205.0.124505-linux-arm.tar.gz"
    sha256 "c11d7d3c4f748d379383b60a4f597925ddccb3645700477b41cbbb83462a5ba7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.124505/kopia-20211205.0.124505-linux-arm64.tar.gz"
    sha256 "dfed29eb0eecc4e86a46217145235244046ebb57a03de93f2ad03e8d64bc9dca"
  end

  def install
    bin.install "kopia"
  end
end

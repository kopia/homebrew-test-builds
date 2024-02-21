# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240221.0.123416"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.123416/kopia-20240221.0.123416-macOS-x64.tar.gz"
    sha256 "c0b22aeb9cbc4658c585c39693e5871d3df9bbd49ed91eea9fcf69e6223f208f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.123416/kopia-20240221.0.123416-macOS-arm64.tar.gz"
    sha256 "158654f101af5bfd4b586e0d383c032a17c595830e423c30dcad41983f6b4e85"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.123416/kopia-20240221.0.123416-linux-x64.tar.gz"
    sha256 "3dd83862db27f831d1c3bd97558177d61c32bb817196f5f5de3ad89862f0b437"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.123416/kopia-20240221.0.123416-linux-arm.tar.gz"
    sha256 "19ad71b46646b013bd5ac1e6cc57f4990ec8118538893c4d64d155ac86855c5e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.123416/kopia-20240221.0.123416-linux-arm64.tar.gz"
    sha256 "6b9a6ca20255855f2c8b9a3ad5b01c87a0eca54df227fcc8c36886f09f03cac2"
  end

  def install
    bin.install "kopia"
  end
end

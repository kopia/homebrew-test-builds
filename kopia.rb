# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241015.0.70729"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.70729/kopia-20241015.0.70729-macOS-x64.tar.gz"
    sha256 "cc88aabf40fca81797bfb27311df8cac128de2e35cf4af8caf2422ad62275e22"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.70729/kopia-20241015.0.70729-macOS-arm64.tar.gz"
    sha256 "165005623abf325e3cb43ea7e10d1412723d2ac04141a04a4886d8a5647a339b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.70729/kopia-20241015.0.70729-linux-x64.tar.gz"
    sha256 "df0a7ee3ad058dfb5a8954bbe4e6474269a10a6e1338801d99dd45014b84039f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.70729/kopia-20241015.0.70729-linux-arm.tar.gz"
    sha256 "f8794d24ba51280f0bc9e8128e3ecadbb6a06104a18c01d4162bf214e33b18c8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241015.0.70729/kopia-20241015.0.70729-linux-arm64.tar.gz"
    sha256 "4d58a59643a3c4edb3b1881a21f5ed4b3d5d41da8d2a530cf680f26c497a9815"
  end

  def install
    bin.install "kopia"
  end
end

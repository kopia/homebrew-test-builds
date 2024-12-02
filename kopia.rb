# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241125.0.234320"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241125.0.234320/kopia-20241125.0.234320-macOS-x64.tar.gz"
    sha256 "9df00a3b871f257df3e0344b4d885561cecbe4bd3550c736b36638efb48b91a0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241125.0.234320/kopia-20241125.0.234320-macOS-arm64.tar.gz"
    sha256 "9a85bfbfad68d16c5d402a05d0bc464b32e0082b8b7a5423811232b9b04c7a09"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241125.0.234320/kopia-20241125.0.234320-linux-x64.tar.gz"
    sha256 "4085a2974d4b8c8f6f2236cdee288fa8055bfde9a427ca1ef9400c867ffab6df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241125.0.234320/kopia-20241125.0.234320-linux-arm.tar.gz"
    sha256 "8d5e5ce2e41a3050f0cb84324929eb68629e95fbe2d097b7816d4f9ae4f5e1bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241125.0.234320/kopia-20241125.0.234320-linux-arm64.tar.gz"
    sha256 "c32474cc712fb0b4f822df83f350e4911fccf4ada283c3bae1a2dfd7e04e89f8"
  end

  def install
    bin.install "kopia"
  end
end

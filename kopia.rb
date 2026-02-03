# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.52605"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.52605/kopia-20260203.0.52605-macOS-x64.tar.gz"
    sha256 "8ccb569dd50fdb1fe683ce1550ee99a5ae75d636d32e72b21cc5eb19504f8ce0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.52605/kopia-20260203.0.52605-macOS-arm64.tar.gz"
    sha256 "f49ccf335263376d1176b800097f7145be8bc1993a098e1968b80ffad5eed95b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.52605/kopia-20260203.0.52605-linux-x64.tar.gz"
    sha256 "b5e888b0fc92656ad539ca55addf68b5a5bd5555567690fb873faf88987bb9fd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.52605/kopia-20260203.0.52605-linux-arm.tar.gz"
    sha256 "828729ef103720646b57b812b1a6303c63cea5135eb22e9887d61d628d8d2ca5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.52605/kopia-20260203.0.52605-linux-arm64.tar.gz"
    sha256 "47d751f647471ae5e5be21b49e73f1bce2bc0b6f753ac471eb4c5b5b0447c284"
  end

  def install
    bin.install "kopia"
  end
end

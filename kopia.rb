# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240716.0.132524"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.132524/kopia-20240716.0.132524-macOS-x64.tar.gz"
    sha256 "aa5c606170c5cf2d2dfbe78f9f200d6411b01c7085bf47f20d1beda590991b28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.132524/kopia-20240716.0.132524-macOS-arm64.tar.gz"
    sha256 "d1b5ff5f04a25672c5ee71ad6eaa631533c36d842f7c40a0d7dadcc9e3a2ae2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.132524/kopia-20240716.0.132524-linux-x64.tar.gz"
    sha256 "61b3422ecd94e488f77deed6519dc1b0df703885a0e1cf48141a8d6891acc7c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.132524/kopia-20240716.0.132524-linux-arm.tar.gz"
    sha256 "c9e6440c46cb029154526d4d364ebb365756400c3d63262bc818097c515eeab2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.132524/kopia-20240716.0.132524-linux-arm64.tar.gz"
    sha256 "391702bd098d723aaa6f04bd4cb085046352b9883e8bf4a2df026ff1b09018eb"
  end

  def install
    bin.install "kopia"
  end
end

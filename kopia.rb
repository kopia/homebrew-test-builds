# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241006.0.90526"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.90526/kopia-20241006.0.90526-macOS-x64.tar.gz"
    sha256 "d7d7c5bd25c68c7ce36136f1b4c68801e2332727b568394c06850bd939d6aca5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.90526/kopia-20241006.0.90526-macOS-arm64.tar.gz"
    sha256 "893eed2ac2bf7d4687811861e5229dfdf6bfaef1546d22b2f8d6ee22ea35d0c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.90526/kopia-20241006.0.90526-linux-x64.tar.gz"
    sha256 "bf63cdef1301a86dcca1da4d434c19f519120859b1778df79bdb737e807cc1f1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.90526/kopia-20241006.0.90526-linux-arm.tar.gz"
    sha256 "05d3ba4f2369a7c666ddfb69b2788abc1a44a0b0e00d0cd308a40650b5dc69db"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.90526/kopia-20241006.0.90526-linux-arm64.tar.gz"
    sha256 "41039e03d9143f03d4ae05c08556309ab4a7514c638a24c054745b95a8f4a8d3"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250918.0.63609"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.63609/kopia-20250918.0.63609-macOS-x64.tar.gz"
    sha256 "251e39635f788c6c61eb2b0c3d9534d1901fa95eb6635443e63ef57d5ada2f5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.63609/kopia-20250918.0.63609-macOS-arm64.tar.gz"
    sha256 "e661d1c3563ff76f2342cb71c2c6104b4ee895fda1dcf2374ea912de264c0010"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.63609/kopia-20250918.0.63609-linux-x64.tar.gz"
    sha256 "e42c782e7af3f03bdbb03d0c19c8fc3b18b51c13c1c9b6d4d688d87ad1cc0b0b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.63609/kopia-20250918.0.63609-linux-arm.tar.gz"
    sha256 "dc25a7263d6be712d13b51db3d8d9e4a0bbfc21cb727379c50bf72f19f44d1b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.63609/kopia-20250918.0.63609-linux-arm64.tar.gz"
    sha256 "9974cb5696ab683561fca25f6e97ea5dc9fac26a528e1a2067cb50f3b3c5f8f8"
  end

  def install
    bin.install "kopia"
  end
end

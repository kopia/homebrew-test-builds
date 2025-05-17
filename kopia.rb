# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250517.0.174902"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.174902/kopia-20250517.0.174902-macOS-x64.tar.gz"
    sha256 "aba099982bbae3c5c3ef903d2071c7f1ecd7cfb8e4df413ce0681ef8a3f35a88"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.174902/kopia-20250517.0.174902-macOS-arm64.tar.gz"
    sha256 "abcead6e9f0f89e9acb842355d263b90a4b9a74a76a1c97fa3ae298684607d78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.174902/kopia-20250517.0.174902-linux-x64.tar.gz"
    sha256 "587e33017b05461a5fef4665749eb980bd0a5cf3bb611b9899409fd8d5024c24"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.174902/kopia-20250517.0.174902-linux-arm.tar.gz"
    sha256 "3a67c880ea076f79c14df0e10dfb059be02405af20299f1567f5cf5ccaec6bd3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.174902/kopia-20250517.0.174902-linux-arm64.tar.gz"
    sha256 "0a3d8fb657a9285247e66610de66b0a86c2e2b3a9ccc4cf63f02e29c6670ae07"
  end

  def install
    bin.install "kopia"
  end
end

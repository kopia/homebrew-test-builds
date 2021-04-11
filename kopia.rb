# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210411.0.92315"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.92315/kopia-20210411.0.92315-macOS-x64.tar.gz"
    sha256 "162ceca20ec1d2adb094859a27d833fab4be71948df50256928318a6dfdfd16b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.92315/kopia-20210411.0.92315-macOS-arm64.tar.gz"
    sha256 "b35e2513f7535e3a7b834d88f94225fdc0dbb6f95e9dd82a088a1415eaf87af7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.92315/kopia-20210411.0.92315-linux-x64.tar.gz"
    sha256 "5d871a8ca698043390751bb8101df1a01b2c88d69d1b0090965111d94bdb906c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.92315/kopia-20210411.0.92315-linux-arm.tar.gz"
    sha256 "f112f5d6a94dc8fbf2357c187da79a45bfc71f6c1e1db7d354a5e8a8711fc56d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210411.0.92315/kopia-20210411.0.92315-linux-arm64.tar.gz"
    sha256 "b4dc6e7fad137710936890f94233d96bd8d270461e0b363bf9559255ddb32172"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230912.0.223227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230912.0.223227/kopia-20230912.0.223227-macOS-x64.tar.gz"
    sha256 "f060adca2f0334eb36389f7a447faab3a572ed0c6200b316d20575f5d4df362a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230912.0.223227/kopia-20230912.0.223227-macOS-arm64.tar.gz"
    sha256 "68c8fc681c283ded63962f8cfa04ca52c8faf02c31c25e61803a39a75b080f9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230912.0.223227/kopia-20230912.0.223227-linux-x64.tar.gz"
    sha256 "9fad7c12b8951727fc74403ef9ca0404362c7a98c42488cf58e3c09e37dc4f7c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230912.0.223227/kopia-20230912.0.223227-linux-arm.tar.gz"
    sha256 "5b9d15eddca92a693e2fea5d5997dd5e0446ba8b501ddca7fde220c1c8459c7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230912.0.223227/kopia-20230912.0.223227-linux-arm64.tar.gz"
    sha256 "fd9ff3e1a79beaecb38296ea09c87314f10d6720650b8b1ceb44f3deac37b980"
  end

  def install
    bin.install "kopia"
  end
end

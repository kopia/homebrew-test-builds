# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210420.0.195129"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210420.0.195129/kopia-20210420.0.195129-macOS-x64.tar.gz"
    sha256 "de99128b306c937b115a797bc5798d09d829907248ae45cbaa48633b1182de27"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210420.0.195129/kopia-20210420.0.195129-macOS-arm64.tar.gz"
    sha256 "b294e0d888eb7f0716ed4aaba9e5301927e0fb0cf8c5ac43a76bc1d28bb5f87e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210420.0.195129/kopia-20210420.0.195129-linux-x64.tar.gz"
    sha256 "945b1816f34cdc044298362b4abc7e7e7ad45f30c5eedacc44f3e5fbcda1c99f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210420.0.195129/kopia-20210420.0.195129-linux-arm.tar.gz"
    sha256 "0eb8f94d82c649ca337bfdf99b5496b76003ddd2b996feb501963d33162c2971"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210420.0.195129/kopia-20210420.0.195129-linux-arm64.tar.gz"
    sha256 "d79834fdf83ca1c537346e16943217c2bcdfb46f00e40353c28b4b870eda032e"
  end

  def install
    bin.install "kopia"
  end
end

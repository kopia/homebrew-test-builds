# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240720.0.213037"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240720.0.213037/kopia-20240720.0.213037-macOS-x64.tar.gz"
    sha256 "9dc6a739323e76b108748e5cde07dd7374e9a340a13e4ffb2dee17c890818955"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240720.0.213037/kopia-20240720.0.213037-macOS-arm64.tar.gz"
    sha256 "bddf1d0c449bbe7c76ce1e056b218753d6550501486a613e9c72c4dd1aff29d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240720.0.213037/kopia-20240720.0.213037-linux-x64.tar.gz"
    sha256 "d84910c60197073b800308e27dc9021e9e839226edb2b627e706d729e526412d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240720.0.213037/kopia-20240720.0.213037-linux-arm.tar.gz"
    sha256 "840f761f17a5b305c5d611be683ff23f1a44d1ef9cf8fa8a09cd584a9fb627e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240720.0.213037/kopia-20240720.0.213037-linux-arm64.tar.gz"
    sha256 "b2bcd1f31a7646b46f7d3ed69888653e203b7eb28f47a3792c0b331a2c18d415"
  end

  def install
    bin.install "kopia"
  end
end

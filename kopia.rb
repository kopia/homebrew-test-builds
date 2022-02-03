# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.173832"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.173832/kopia-20220202.0.173832-macOS-x64.tar.gz"
    sha256 "5dd63fbb5c63811596e076cce3787ef1e6b06adfbc517f3cc1bbbb8abde1bde8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.173832/kopia-20220202.0.173832-macOS-arm64.tar.gz"
    sha256 "1800180baf1f347d4dc3cae1d279b7d310e161268f2d112ba107b5cc700bc1f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.173832/kopia-20220202.0.173832-linux-x64.tar.gz"
    sha256 "1819f0f9a9fa611758620db700373c1e5d68563b9d27bc8e2ba352e059a7c674"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.173832/kopia-20220202.0.173832-linux-arm.tar.gz"
    sha256 "f1583faec6619f8d95026469e77f466eacb8bb5990f99c0cc8911185c60eaeec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.173832/kopia-20220202.0.173832-linux-arm64.tar.gz"
    sha256 "6b75b0aa1613975fbccae7684f1109dd477bdf87dfd0487006a49010d03e5a76"
  end

  def install
    bin.install "kopia"
  end
end

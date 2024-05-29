# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240528.0.170616"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240528.0.170616/kopia-20240528.0.170616-macOS-x64.tar.gz"
    sha256 "10c1253d7996ac5aacf2d15d08483b73b61f2a51e66eee7b38659afd0de01dea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240528.0.170616/kopia-20240528.0.170616-macOS-arm64.tar.gz"
    sha256 "36232d0e497dd3c2225c33cc791f484c3ac21a84781f4dfd6e895e92519aa581"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240528.0.170616/kopia-20240528.0.170616-linux-x64.tar.gz"
    sha256 "2bd88b04f6058771028a5c4e6d65666ac1e8a4f561d0472492b741b9fe5d81ce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240528.0.170616/kopia-20240528.0.170616-linux-arm.tar.gz"
    sha256 "63e3f5cae3f76b9b543bd09ef15420cc026737cef25fcc898fa26e53f8191ae6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240528.0.170616/kopia-20240528.0.170616-linux-arm64.tar.gz"
    sha256 "5ac726c294f31d02912979303bc66de848009f700322c3d52c81c7b925623272"
  end

  def install
    bin.install "kopia"
  end
end

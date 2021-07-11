# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.194650"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194650/kopia-20210710.0.194650-macOS-x64.tar.gz"
    sha256 "89626167fa59d7494b663f67c69820e2f40939951e391389ac180cc9b8f2f16a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194650/kopia-20210710.0.194650-macOS-arm64.tar.gz"
    sha256 "9b4bdab2c5a7b3b27334a5f998ffe4503646e52897bddb5b759a8a9a1b96422a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194650/kopia-20210710.0.194650-linux-x64.tar.gz"
    sha256 "ba9cb637c287010785ccdf055308113049cc4f8b92da5474e32e7190bdbcfb6b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194650/kopia-20210710.0.194650-linux-arm.tar.gz"
    sha256 "79b5016a632f11663e3fc6707f6ddc3d3a047456d276e65799b421dde6a9a3a7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.194650/kopia-20210710.0.194650-linux-arm64.tar.gz"
    sha256 "a76476f00c43b078095a7c939838e71dee58984f57a04f8066c3dd99e73c7eae"
  end

  def install
    bin.install "kopia"
  end
end

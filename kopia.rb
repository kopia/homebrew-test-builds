# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261028.0.31916"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.31916/kopia-20261028.0.31916-macOS-x64.tar.gz"
    sha256 "609ee11f8965fa7ab6b2030acb502de379b752f592d0da9c3df3ecea0774b678"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.31916/kopia-20261028.0.31916-macOS-arm64.tar.gz"
    sha256 "95ce9791288be93d4ba53df03ddfdd9a99ca4f709f6c86f31cb2300c8762fee6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.31916/kopia-20261028.0.31916-linux-x64.tar.gz"
    sha256 "3fb3d1fb67cbf2edda58fcf6ac77c83808810efa7bc9115839b8ada9f5f0efae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.31916/kopia-20261028.0.31916-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.31916/kopia-20261028.0.31916-linux-arm64.tar.gz"
    sha256 "d9e9d789854d0d84f76a5da956a456a6a138d140a992a7b0f40278643552510b"
  end

  def install
    bin.install "kopia"
  end
end

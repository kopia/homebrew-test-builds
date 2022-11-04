# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221104.0.80213"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221104.0.80213/kopia-20221104.0.80213-macOS-x64.tar.gz"
    sha256 "95192817754bc34bb25ac53a9c14235b29d414bd88052a5f8573197d9098f90b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221104.0.80213/kopia-20221104.0.80213-macOS-arm64.tar.gz"
    sha256 "86bb85d62274cb74c6e043e1e683525de59d8a357f0abd8a3b22c6f616d21dd9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221104.0.80213/kopia-20221104.0.80213-linux-x64.tar.gz"
    sha256 "1312d0c51ecd8318bbd6258fc2038e36619b939e75a12fae4539fdc57b8fe21c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221104.0.80213/kopia-20221104.0.80213-linux-arm.tar.gz"
    sha256 "b6fff5eaf3d6d4d10e6cd2fff98ba2a9494ac170a4e9c939a606032b81e9598a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221104.0.80213/kopia-20221104.0.80213-linux-arm64.tar.gz"
    sha256 "095d025794a32904d5c66c6ce7543889d718b882a80b06a0bb1db3310dd74c94"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250502.0.13609"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.13609/kopia-20250502.0.13609-macOS-x64.tar.gz"
    sha256 "d3f0783c4b40b857b3bea8cf9211182f2ccf4d24a6cd7d6d0b80601341e8c622"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.13609/kopia-20250502.0.13609-macOS-arm64.tar.gz"
    sha256 "07be48a4bd6770ed941327014bec80179f1f38c272a5d57797ecd257deaf4f78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.13609/kopia-20250502.0.13609-linux-x64.tar.gz"
    sha256 "1a164267dfad2858a9b9f639b3f54d1793dc7e09aaa545a6e027b53b06a07286"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.13609/kopia-20250502.0.13609-linux-arm.tar.gz"
    sha256 "1d42fca86617de226baa0f831313ce0a19216e1e97166b40dc039bbf150298f4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.13609/kopia-20250502.0.13609-linux-arm64.tar.gz"
    sha256 "abdf3f97fc54af098baa43f8668ceef61cf23c5bf13ac2209556c4afcb5d9950"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241023.0.232823"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.232823/kopia-20241023.0.232823-macOS-x64.tar.gz"
    sha256 "f5b6b9ed638e78fd2dce30f95ab3d61e98b7e8a12e04a62fc0aea11a1732af28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.232823/kopia-20241023.0.232823-macOS-arm64.tar.gz"
    sha256 "0e880f9ebae3c3d136cde731ae8dc0fa1be2965d34fda290301caee7cc2f8024"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.232823/kopia-20241023.0.232823-linux-x64.tar.gz"
    sha256 "cb55fc364c3c5209bc8c2b79538ec582ec7ebc4f2dc35e68fd40a3a952ce0c73"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.232823/kopia-20241023.0.232823-linux-arm.tar.gz"
    sha256 "ebf1713f47345cc37e84df473cf31ee2ad4a2024ce21e848878a301c41e40372"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241023.0.232823/kopia-20241023.0.232823-linux-arm64.tar.gz"
    sha256 "98c8c6831ca88800f25dcfd6fe6c8f4903cae129d29c7e674efdcb273d99bf96"
  end

  def install
    bin.install "kopia"
  end
end

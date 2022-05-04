# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220503.0.215439"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220503.0.215439/kopia-20220503.0.215439-macOS-x64.tar.gz"
    sha256 "0c8e9a7f73d420e434ae2d5cc8cfd5c22d2076e38ecd86c23efd617f94193641"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220503.0.215439/kopia-20220503.0.215439-macOS-arm64.tar.gz"
    sha256 "0c774db5fd1008c866c2dce47909c1ccc4097ce9aa6b936f65cc49f09986a7d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220503.0.215439/kopia-20220503.0.215439-linux-x64.tar.gz"
    sha256 "78b22baac4d68684f6818b513f8a95d3be5548fbc88aeccf71d9d12a490a0f8b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220503.0.215439/kopia-20220503.0.215439-linux-arm.tar.gz"
    sha256 "043030e2137e964e0f8316ef4c57beca6413388a0a6f7b5c55816d3181e0317b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220503.0.215439/kopia-20220503.0.215439-linux-arm64.tar.gz"
    sha256 "2eba0e434341ab1e5ef11b2c28a9366e00c95ed804ed4a8592a8734e11bb4c0a"
  end

  def install
    bin.install "kopia"
  end
end

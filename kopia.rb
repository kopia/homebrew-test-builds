# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250306.0.105303"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.105303/kopia-20250306.0.105303-macOS-x64.tar.gz"
    sha256 "086b26d477dd4542a9d98508a31a81d990f806e0ebc0fee8620bc45b83853944"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.105303/kopia-20250306.0.105303-macOS-arm64.tar.gz"
    sha256 "5e581d19c8337fac0638d0ca5c5e8aba78b98578a4b1df1d3c51331b505b1a17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.105303/kopia-20250306.0.105303-linux-x64.tar.gz"
    sha256 "d91a8247cd0a77ec4edc013614241903ab03107d3dff7f713536c28f3b03618f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.105303/kopia-20250306.0.105303-linux-arm.tar.gz"
    sha256 "d457d61f079ef44239deb73c559c7dfe89d43c0308cf15dfc088f53605152284"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.105303/kopia-20250306.0.105303-linux-arm64.tar.gz"
    sha256 "9c237bc5403906baec54de5c5f28908534a437a0567b60f87f27f5c63c7726e2"
  end

  def install
    bin.install "kopia"
  end
end

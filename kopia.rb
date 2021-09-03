# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210902.0.195249"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.195249/kopia-20210902.0.195249-macOS-x64.tar.gz"
    sha256 "72a625eff275263afe0bc510e2dfb0a1a55c22724d4d74f9c383c39f1c7adf9f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.195249/kopia-20210902.0.195249-macOS-arm64.tar.gz"
    sha256 "a7d9ee1588049489f97ee110fc31e2befc5d5d04e9b236dd75910236864da881"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.195249/kopia-20210902.0.195249-linux-x64.tar.gz"
    sha256 "0c0207ecd0c0a0b48e9e69cda6860a2b80c8d706fdb7f5cadfe6124c6d6772d9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.195249/kopia-20210902.0.195249-linux-arm.tar.gz"
    sha256 "9acfde425e5fc638ab1344af5720a7f59d5a37fa83492bda54cfd8a1e3dcc350"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210902.0.195249/kopia-20210902.0.195249-linux-arm64.tar.gz"
    sha256 "a0614f27b06c8ad2c43e4a86737da8c9d6ce6baa192ef23f26867495dea88c2b"
  end

  def install
    bin.install "kopia"
  end
end

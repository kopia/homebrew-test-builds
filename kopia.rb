# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220516.0.12130"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.12130/kopia-20220516.0.12130-macOS-x64.tar.gz"
    sha256 "bd67b05f97efec8f9731e4f85e68e2996f760fdd49dfe83c57f98997d54051fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.12130/kopia-20220516.0.12130-macOS-arm64.tar.gz"
    sha256 "e1f730cc0b1beec52411d1c4552c4e26d5ee4a506da2018b7185d8003a556602"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.12130/kopia-20220516.0.12130-linux-x64.tar.gz"
    sha256 "9d5434a988a1b28874568768ccd2edee598328177966781e60ddd384dd18d3b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.12130/kopia-20220516.0.12130-linux-arm.tar.gz"
    sha256 "25e070d3f4fcce38de0c11ad6718c2bd7d51bd54de9e855b0876f8a8f6738558"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.12130/kopia-20220516.0.12130-linux-arm64.tar.gz"
    sha256 "8d1ad0281281406f628f392a162d83aea26b9d1d4b23fda1de8929aa0e563988"
  end

  def install
    bin.install "kopia"
  end
end

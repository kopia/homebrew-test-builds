# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240205.0.210253"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240205.0.210253/kopia-20240205.0.210253-macOS-x64.tar.gz"
    sha256 "b65d863e0e0037f5a281280ab3f6db622c8fe3e0906e35bb9b69de8c2703ccea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240205.0.210253/kopia-20240205.0.210253-macOS-arm64.tar.gz"
    sha256 "3e8297ca767c90a4888ad8d2e54fa885363d34ff3bf1935921e74dff0a4820b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240205.0.210253/kopia-20240205.0.210253-linux-x64.tar.gz"
    sha256 "6810c6c7133e2800a678d25bf1de0ee70183f3a2b0e5778d707afb738e9cfe86"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240205.0.210253/kopia-20240205.0.210253-linux-arm.tar.gz"
    sha256 "405faf178076478bd5452b13f6367df5fea7784243b891ab9724aaedc508d497"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240205.0.210253/kopia-20240205.0.210253-linux-arm64.tar.gz"
    sha256 "038f2b9df4f9e3d081256ab4eda0cb83002eb96cc8f9f3ce602ecaaf507abfe7"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220502.0.40328"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.40328/kopia-20220502.0.40328-macOS-x64.tar.gz"
    sha256 "b0ce8a7a4e10d87ef92247100a4ca8c4b45e8b80c61dff74824dfc2adfb83683"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.40328/kopia-20220502.0.40328-macOS-arm64.tar.gz"
    sha256 "4afe08a127a5ca678f34329c98ca90bfc3e37a2d0cb7d4b082ca42dc997965f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.40328/kopia-20220502.0.40328-linux-x64.tar.gz"
    sha256 "80d40ec692a66b8d4d8821bbf01d3f2169afd812156e726843d6e7462b3db5b5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.40328/kopia-20220502.0.40328-linux-arm.tar.gz"
    sha256 "014a586cf17221c6f1599fc5abb053d0665e6be8d4a05b627ee4ffab55351636"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220502.0.40328/kopia-20220502.0.40328-linux-arm64.tar.gz"
    sha256 "a31b1488cde18492e60dffe7f7a014e768ec119a9e1e17cd5d77c2aed816526c"
  end

  def install
    bin.install "kopia"
  end
end

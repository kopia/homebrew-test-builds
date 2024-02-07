# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240207.0.2820"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.2820/kopia-20240207.0.2820-macOS-x64.tar.gz"
    sha256 "89d90a857da782d3a3373178a4fe6a0fa2a95f2bd0f688837f49535d4d963c57"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.2820/kopia-20240207.0.2820-macOS-arm64.tar.gz"
    sha256 "d302f1907abefe9837de884daf926ebfc0a7fc244ac4821c9d98b3f4f73fe0e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.2820/kopia-20240207.0.2820-linux-x64.tar.gz"
    sha256 "4747a53aba5e155e9f13c6e19ac7a3e98eedd0890d2ca887724c82e5223b0339"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.2820/kopia-20240207.0.2820-linux-arm.tar.gz"
    sha256 "de5701316b1bca2fa724feddb113aba821eb227da53da9d1f7927bb20cf4da27"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.2820/kopia-20240207.0.2820-linux-arm64.tar.gz"
    sha256 "62bf12bfbcbff2f83656a0f8b433649bec1b2a5f7aedad25252496fc8c8bd882"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221002.0.43941"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.43941/kopia-20221002.0.43941-macOS-x64.tar.gz"
    sha256 "ee15fbbd581774bf4838cd3b4f1b9ddd2c6c1a7b74af8a3baaed361d2545da8b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.43941/kopia-20221002.0.43941-macOS-arm64.tar.gz"
    sha256 "7203cd1611967df539d7f720366f628a2b79c50cccc112351541622999d37252"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.43941/kopia-20221002.0.43941-linux-x64.tar.gz"
    sha256 "658ea62539b75478351b6f08beee540861e31f6955e396a221eb5274cd58b5b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.43941/kopia-20221002.0.43941-linux-arm.tar.gz"
    sha256 "e22a2d3219b0f4157ff87cc7186c7228b5889c38ec66fd45c4bd3d19347ce9fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.43941/kopia-20221002.0.43941-linux-arm64.tar.gz"
    sha256 "6981812eaecf2fe19abf8e89421934f739c5f5e896de7da73cf8b553cfda063c"
  end

  def install
    bin.install "kopia"
  end
end

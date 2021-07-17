# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.75929"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75929/kopia-20210717.0.75929-macOS-x64.tar.gz"
    sha256 "04bc9d831b01f50ff6d94353d6e9d2c8ec66459413c1f9c7055b673ce2421fbb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75929/kopia-20210717.0.75929-macOS-arm64.tar.gz"
    sha256 "9d3c5f1c199d0f0e4d0bee950ce61bf83824c6fc9d5dcb76a322d5c95aa5f567"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75929/kopia-20210717.0.75929-linux-x64.tar.gz"
    sha256 "1f8ac72ec63a49fecc1a7251eb7ec97ad997dcf61dfa557fb1e05285b99f81ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75929/kopia-20210717.0.75929-linux-arm.tar.gz"
    sha256 "01dee73b7a72c3f53c2ffaae10e9126e2e1a9bff62755df2868a28d67404db98"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.75929/kopia-20210717.0.75929-linux-arm64.tar.gz"
    sha256 "c76b3926545e8feeb7e592487c95f768634a9aa21d487e369488a5a5106d5b03"
  end

  def install
    bin.install "kopia"
  end
end

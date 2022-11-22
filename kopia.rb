# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221122.0.42905"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.42905/kopia-20221122.0.42905-macOS-x64.tar.gz"
    sha256 "570ebdf69793b175c1d14378f0f82ed77065039eb45c99344cf1ba1292d5535c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.42905/kopia-20221122.0.42905-macOS-arm64.tar.gz"
    sha256 "29c56edc12f6f3b99b0d8e7698e42f6a84314550c395badb4272d8a54df3e7d7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.42905/kopia-20221122.0.42905-linux-x64.tar.gz"
    sha256 "07446c4413533713093dbeabd9cdaaf9d1c60e2b151d69dad40c17f29f487e24"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.42905/kopia-20221122.0.42905-linux-arm.tar.gz"
    sha256 "5b1bca5cc91877e2a10a17ce87dae721d0c68745cbd13772e58aa7f7750a89af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221122.0.42905/kopia-20221122.0.42905-linux-arm64.tar.gz"
    sha256 "9a477f18e75a5269096a274eb08727483a2d4b88d733a5347cf6c659a6d88b13"
  end

  def install
    bin.install "kopia"
  end
end

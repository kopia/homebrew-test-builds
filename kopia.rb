# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241119.0.230048"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.230048/kopia-20241119.0.230048-macOS-x64.tar.gz"
    sha256 "7545e7b0d9b5b7de4e1383c92631ebbe0a528bd3df38d91dad05c2620da12954"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.230048/kopia-20241119.0.230048-macOS-arm64.tar.gz"
    sha256 "3f53b600a09eb80fe81a90474545d8e10976af463bb3268087a31414ec02b1a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.230048/kopia-20241119.0.230048-linux-x64.tar.gz"
    sha256 "c916c03d2ac79d6f66bf4e29c69ed648038c62f3b7ba189481047f07f370767e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.230048/kopia-20241119.0.230048-linux-arm.tar.gz"
    sha256 "dd9323935791d52559186a8532124466ca77fe5b95eaae71631e85eb3027cfe3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.230048/kopia-20241119.0.230048-linux-arm64.tar.gz"
    sha256 "dc5bc42aa7fc180591baa4663ed029bddeb7686b8c1e9984120a88fb95c82ef9"
  end

  def install
    bin.install "kopia"
  end
end

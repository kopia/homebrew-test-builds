# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220113.0.201103"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.201103/kopia-20220113.0.201103-macOS-x64.tar.gz"
    sha256 "e730ed93406f4781b7563f6866df3e9ebbe096be6805f145a8f99c5b5ffbb565"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.201103/kopia-20220113.0.201103-macOS-arm64.tar.gz"
    sha256 "36c6bb50cab10b63f584eb1cacedb18b00e944c06ddc6467584027c9ba123aea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.201103/kopia-20220113.0.201103-linux-x64.tar.gz"
    sha256 "297bfd21a4201a97606d9af96cae9c169399f03d86eb7829013a56d9e5f275d5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.201103/kopia-20220113.0.201103-linux-arm.tar.gz"
    sha256 "8c32724956209355cc6739eb36e91db45ad0d76021b543ad8f898a5d393d0f3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.201103/kopia-20220113.0.201103-linux-arm64.tar.gz"
    sha256 "1a27c8afeb44a591b9ac821b88de2f0d386cb456b4d917ce44b3bdc28108f0a3"
  end

  def install
    bin.install "kopia"
  end
end

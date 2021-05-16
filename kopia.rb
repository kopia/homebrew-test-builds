# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.144256"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.144256/kopia-20210516.0.144256-macOS-x64.tar.gz"
    sha256 "1e4bb88c407be80bc060dd1bf12b8e3ef98131bc0941257fda4ab61e6dc6836c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.144256/kopia-20210516.0.144256-macOS-arm64.tar.gz"
    sha256 "b51b6bb55eead4c0bdb705a7761306e5f6b9ab5d93e0bba31604abebb1910001"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.144256/kopia-20210516.0.144256-linux-x64.tar.gz"
    sha256 "b738ab24d227a293388cf1851ebebd803e4363f8a9475b73d25063e16cdde5fb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.144256/kopia-20210516.0.144256-linux-arm.tar.gz"
    sha256 "aab5442d372582b882e7c66f0e0b1644bd87e6c095cce7832c0ddd048fdbb528"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.144256/kopia-20210516.0.144256-linux-arm64.tar.gz"
    sha256 "bfa8c75cf66afd75481833d23b3f9b328354913647410142ae7cfc9d9011b6e8"
  end

  def install
    bin.install "kopia"
  end
end

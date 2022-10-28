# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221028.0.110247"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221028.0.110247/kopia-20221028.0.110247-macOS-x64.tar.gz"
    sha256 "14bd70dccd949f0400c7c3e91a593350140284fccd89a692736c4d6edeef6f22"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221028.0.110247/kopia-20221028.0.110247-macOS-arm64.tar.gz"
    sha256 "01d844225f183fb8c44b7f6c7856137123a46ba4ad5bfb9cba6de7c75c6978e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221028.0.110247/kopia-20221028.0.110247-linux-x64.tar.gz"
    sha256 "74924eec887bf5b5d511808ee1d05ef1967e4db2983385235ecac0cba8e7de74"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221028.0.110247/kopia-20221028.0.110247-linux-arm.tar.gz"
    sha256 "c6d096e34dee60d17ea68a1489ead8f34e4e6d4017a4324c6b126609ed56ea75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221028.0.110247/kopia-20221028.0.110247-linux-arm64.tar.gz"
    sha256 "6edab218484486f9baccf1007e29e8e1c85e18084ad9a8cf014d03a4bfd083d9"
  end

  def install
    bin.install "kopia"
  end
end

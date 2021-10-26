# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211025.0.202823"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211025.0.202823/kopia-20211025.0.202823-macOS-x64.tar.gz"
    sha256 "59d2524f948b108a8a462f703be5035807297c96d7efb7560ffd809145760879"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211025.0.202823/kopia-20211025.0.202823-macOS-arm64.tar.gz"
    sha256 "35b8a159d28e5bb10093da32f30835001fd1abd10e486f13d5b5924ccf6e61ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211025.0.202823/kopia-20211025.0.202823-linux-x64.tar.gz"
    sha256 "3421a7a4b16d5e69c8f4b172f631fa463b1b80e14d1e9c74f5d0cf2660980570"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211025.0.202823/kopia-20211025.0.202823-linux-arm.tar.gz"
    sha256 "159d36c06c783a6c50ecaf936da196debaa8c59b83aea4bf32c080b2ad0a07f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211025.0.202823/kopia-20211025.0.202823-linux-arm64.tar.gz"
    sha256 "4836fabc637dbf418deec0bf064fb5079942fa4904f2a445580a42bd51d3fc90"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220211.0.172850"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172850/kopia-20220211.0.172850-macOS-x64.tar.gz"
    sha256 "08474b1932b76078532562d77685a7264dcccd3002e57e90541acb53229f6f15"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172850/kopia-20220211.0.172850-macOS-arm64.tar.gz"
    sha256 "dbc3ca0b94093356ed78751d7d769f1aed7930a46c06f7717fd75986a234d9b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172850/kopia-20220211.0.172850-linux-x64.tar.gz"
    sha256 "4a0c51401d3b3a957f0da1680c2c95616cc2330319f4ac8d0ee2720e34dbb371"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172850/kopia-20220211.0.172850-linux-arm.tar.gz"
    sha256 "6a8826ecbedbeaefe30cfd0182274aef79701820b17ef815d0ef5a5de2a9434e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220211.0.172850/kopia-20220211.0.172850-linux-arm64.tar.gz"
    sha256 "cdbb57afa881253275d30bace6041493cfb203d048ec0b0799a4a7d9633e83dd"
  end

  def install
    bin.install "kopia"
  end
end

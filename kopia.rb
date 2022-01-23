# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220123.0.122000"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.122000/kopia-20220123.0.122000-macOS-x64.tar.gz"
    sha256 "a841c7987bb3c87fbd86a01d4a58e7cc45c1a1b6e856264477d6213aa6d3cb3c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.122000/kopia-20220123.0.122000-macOS-arm64.tar.gz"
    sha256 "a339d1d058c7f1dc3fb13180a161d50bef0030725b7a6b2a5487809860547969"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.122000/kopia-20220123.0.122000-linux-x64.tar.gz"
    sha256 "1255fda2ebd7dee347f809715d01d5f4eacfe3ef15441b817a0d8e0b9af6e658"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.122000/kopia-20220123.0.122000-linux-arm.tar.gz"
    sha256 "29db90ed828ec3e04123d123c84610ea1b0179e134beeea1e5a940775ac6ac88"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.122000/kopia-20220123.0.122000-linux-arm64.tar.gz"
    sha256 "f636a5a6c965e3e5e409775232612b7400125c2035a9baf5291f2544c7dec1ca"
  end

  def install
    bin.install "kopia"
  end
end

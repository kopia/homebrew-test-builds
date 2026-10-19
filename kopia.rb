# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261019.0.223530"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.223530/kopia-20261019.0.223530-macOS-x64.tar.gz"
    sha256 "6d03dfdd93e3c3141b04e8e1cc314883c0ed661ec5cbc10e9c2c4b3eb60827e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.223530/kopia-20261019.0.223530-macOS-arm64.tar.gz"
    sha256 "5122303be584a600a36c09172b88067c69f374886877685451b6fc37781a4138"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.223530/kopia-20261019.0.223530-linux-x64.tar.gz"
    sha256 "0ab1b38fccf8aa13329201de4f49e7babb1f0f2e0d2ba196a27791c9734745dc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.223530/kopia-20261019.0.223530-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261019.0.223530/kopia-20261019.0.223530-linux-arm64.tar.gz"
    sha256 "80edc9d7ec01ee09d74e08362475c919387be61a8ce371c77d174f37855bb25c"
  end

  def install
    bin.install "kopia"
  end
end

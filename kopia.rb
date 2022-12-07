# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221206.0.200107"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.200107/kopia-20221206.0.200107-macOS-x64.tar.gz"
    sha256 "47452359eccd088f2e9f9c382281c19f63cacbc3d7f9e669200002b0cafbbd80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.200107/kopia-20221206.0.200107-macOS-arm64.tar.gz"
    sha256 "d086cb996e24205ceacff215940db040d517950d6075b6435d3591092844646e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.200107/kopia-20221206.0.200107-linux-x64.tar.gz"
    sha256 "7afac7bdf2530cc9824e24679709772c0bf20f14fb573721698da4718223415e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.200107/kopia-20221206.0.200107-linux-arm.tar.gz"
    sha256 "0a95588f9a12620efc8adc548583bcb8222e196b0c59c68a36b8f5cd3b7d2137"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221206.0.200107/kopia-20221206.0.200107-linux-arm64.tar.gz"
    sha256 "69e773493e10117f31f66207a9dd36f2561fcf14db884747dc1221863452014e"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210905.0.11"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210905.0.11/kopia-20210905.0.11-macOS-x64.tar.gz"
    sha256 "f24753f58dd52defa7d02c672d46bdd1d020457cb6e23f0a13973afe0569c501"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210905.0.11/kopia-20210905.0.11-macOS-arm64.tar.gz"
    sha256 "935256e54ec39affc826347b6d9be0e8bd925bcb5a5f2b7ee09b408a56d856f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210905.0.11/kopia-20210905.0.11-linux-x64.tar.gz"
    sha256 "d4277a6f2f15e657b793579d3ca1da211eecb6338319abf5307f0109999374b2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210905.0.11/kopia-20210905.0.11-linux-arm.tar.gz"
    sha256 "d67a32931611b6de0d9a00b92bc20036f1aa618fe57c3e8281f9ccafe2929720"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210905.0.11/kopia-20210905.0.11-linux-arm64.tar.gz"
    sha256 "a6dfd737e7d673a0ad2312163bd177abaeec27c26bc8aa0eb5648a06dcaf4526"
  end

  def install
    bin.install "kopia"
  end
end

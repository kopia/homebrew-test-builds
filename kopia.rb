# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.214413"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.214413/kopia-20220306.0.214413-macOS-x64.tar.gz"
    sha256 "65ffa470f0701e0b8be6088454b83389b2c949ee01ddcec8b835696948c76b12"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.214413/kopia-20220306.0.214413-macOS-arm64.tar.gz"
    sha256 "4dd47804dcfafe2eeca882d893bf821ab0b7592827dfe1432d19de2181cc6263"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.214413/kopia-20220306.0.214413-linux-x64.tar.gz"
    sha256 "a09b04fe345137471d18b508fde436221a38dc2f83804d6edf8d717952824527"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.214413/kopia-20220306.0.214413-linux-arm.tar.gz"
    sha256 "c9bf7181e3ec78d7d1607503077fc8d3efeb09b723972eaac7409fc8924fedf7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.214413/kopia-20220306.0.214413-linux-arm64.tar.gz"
    sha256 "6d2aa64c2e470441257a6b10e8a3b66568daf7f92c769a272c0944abea2c44fe"
  end

  def install
    bin.install "kopia"
  end
end

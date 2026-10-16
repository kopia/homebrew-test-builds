# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261016.0.32556"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261016.0.32556/kopia-20261016.0.32556-macOS-x64.tar.gz"
    sha256 "36200ac277321fd73dc7cc971178be8a6299336b1fd55386ee80f9a8493a17bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261016.0.32556/kopia-20261016.0.32556-macOS-arm64.tar.gz"
    sha256 "6468eabbb8c3ba91f149d00407e5de2421c56cc64f0b040f6db4c43d42bf65cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261016.0.32556/kopia-20261016.0.32556-linux-x64.tar.gz"
    sha256 "a4aeb0225090ddaa951f69d8e69d4853ad2c11c8742b5162394b96d71774dce1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261016.0.32556/kopia-20261016.0.32556-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261016.0.32556/kopia-20261016.0.32556-linux-arm64.tar.gz"
    sha256 "8c377f9cdc22178a920f34a1676a68570a0dab79e8e6557e608fab4733a6bad4"
  end

  def install
    bin.install "kopia"
  end
end

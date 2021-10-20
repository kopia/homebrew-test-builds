# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211019.0.192400"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.192400/kopia-20211019.0.192400-macOS-x64.tar.gz"
    sha256 "61892817399b80cb66dbaec0a416c6a39661232a84f40dd3aee670edc4f0ffac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.192400/kopia-20211019.0.192400-macOS-arm64.tar.gz"
    sha256 "621a58df618c8bea74015be2eab5e37db4604be0c4fca3b79d4ab30aa693943f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.192400/kopia-20211019.0.192400-linux-x64.tar.gz"
    sha256 "d75a31546332563708635fffbc42ff41274785b6393b54b85d7a9154a9d9a995"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.192400/kopia-20211019.0.192400-linux-arm.tar.gz"
    sha256 "3f9cf9b355b7a7bec41e957e4c4de7fea0bd1d4eebd63a7e6222e1765d767040"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.192400/kopia-20211019.0.192400-linux-arm64.tar.gz"
    sha256 "3db6a73585a0fbadeacebcfdeac82a922600d4c879b33335faa9f05964bebf4c"
  end

  def install
    bin.install "kopia"
  end
end

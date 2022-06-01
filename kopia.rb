# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220531.0.202938"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.202938/kopia-20220531.0.202938-macOS-x64.tar.gz"
    sha256 "0b04bbba18b4e7f54d347fbf44d24bd93dff3cb91db0a774dfe00589999414b0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.202938/kopia-20220531.0.202938-macOS-arm64.tar.gz"
    sha256 "8fbb364be0cbca1b778a5d30176f8629852775270441f4651d4054faa9b3bd31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.202938/kopia-20220531.0.202938-linux-x64.tar.gz"
    sha256 "379253a8e6aeffe9d15cad9ab4e9f5e2c5c73be78540d6a164a13df816af0f53"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.202938/kopia-20220531.0.202938-linux-arm.tar.gz"
    sha256 "6205ea85c73ac4f30331a73fc8cf6267f032ec04e01b3171d9a822d9c1fbb011"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220531.0.202938/kopia-20220531.0.202938-linux-arm64.tar.gz"
    sha256 "a3576215f49907caac110ef7667a88448d49c99bd5ec1429308e6da53907bc86"
  end

  def install
    bin.install "kopia"
  end
end

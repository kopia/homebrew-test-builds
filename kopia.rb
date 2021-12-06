# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211205.0.204941"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.204941/kopia-20211205.0.204941-macOS-x64.tar.gz"
    sha256 "01c2634c2c2bce063d74f0ff8fe0b0c7bed8dda96b5b6b81ba321277a9cb24b7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.204941/kopia-20211205.0.204941-macOS-arm64.tar.gz"
    sha256 "89b6ba19f61854ad867d9661de27b541ad7ee0b1b9f5d6a461e98e53df80930e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.204941/kopia-20211205.0.204941-linux-x64.tar.gz"
    sha256 "c13886b3ecf3a313b4f11e1af23e644e894e938a2383ee66dc5f86827514045b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.204941/kopia-20211205.0.204941-linux-arm.tar.gz"
    sha256 "3949b5f03200fc439b5268faa63ed9b9d5b6d541d5aa5ccba147417a038ad6da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211205.0.204941/kopia-20211205.0.204941-linux-arm64.tar.gz"
    sha256 "98423a534a0ee5aa2a1de6a034f11cfb3a10168e6ae8e72d5f1b0367d6427224"
  end

  def install
    bin.install "kopia"
  end
end

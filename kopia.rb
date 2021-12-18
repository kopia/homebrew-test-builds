# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.143648"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.143648/kopia-20211218.0.143648-macOS-x64.tar.gz"
    sha256 "f104bb7fbe4c9ff0e64f7185b0167f0098961002c5dc5eed320bf1e292346c42"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.143648/kopia-20211218.0.143648-macOS-arm64.tar.gz"
    sha256 "6287cdc8d02338ea97dc58b1065903532fb82f9b06ec730ef87fa063ba0e675b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.143648/kopia-20211218.0.143648-linux-x64.tar.gz"
    sha256 "734433a3482f0d2ef44309d714bf23073fbb11e4242114193afc39ecbd1cf7a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.143648/kopia-20211218.0.143648-linux-arm.tar.gz"
    sha256 "975f0a832fa72659ecabf6ef41f60110ad394cb5badce2f86c9672cbf65e9c76"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.143648/kopia-20211218.0.143648-linux-arm64.tar.gz"
    sha256 "dfc42796f135a061ef9578522e4fcfd6a3b7c3ca93a8a186d50ac4a9270d8186"
  end

  def install
    bin.install "kopia"
  end
end

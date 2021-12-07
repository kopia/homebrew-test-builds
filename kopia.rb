# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211206.0.185502"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211206.0.185502/kopia-20211206.0.185502-macOS-x64.tar.gz"
    sha256 "cff0b3abac326c45b199e658818f7fd3b34335a952fcb8af6e050446e1bc5022"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211206.0.185502/kopia-20211206.0.185502-macOS-arm64.tar.gz"
    sha256 "18451cab565267c190a5a71de5c17780e10e4de27b3d8863f4ee2fc425d94bdb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211206.0.185502/kopia-20211206.0.185502-linux-x64.tar.gz"
    sha256 "8d95a0c917a0b0337278b3c4a98570adc03ab13314241c5d51f24d2bc2594013"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211206.0.185502/kopia-20211206.0.185502-linux-arm.tar.gz"
    sha256 "9eead145945d8c6886046b08b17648d47c56ca6bde93f10a150ca1e908e2d6e6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211206.0.185502/kopia-20211206.0.185502-linux-arm64.tar.gz"
    sha256 "52a77d757635f334863b9e35242f65deb9d7691319d035c26a6007e5f34ce0f1"
  end

  def install
    bin.install "kopia"
  end
end

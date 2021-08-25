# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210825.0.93607"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.93607/kopia-20210825.0.93607-macOS-x64.tar.gz"
    sha256 "5a2a81b98952efca1b787d47dee4de899bc385f18e0cffc08440da4de1ed3684"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.93607/kopia-20210825.0.93607-macOS-arm64.tar.gz"
    sha256 "70e1a9998b3097f3fe40648e4883713ed520a9bd587b512e01754d91c134cb96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.93607/kopia-20210825.0.93607-linux-x64.tar.gz"
    sha256 "0b0322057b40a0f05f62fc6ba11188cd7c1faa5d4974e8e6e5bc846990e39a0c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.93607/kopia-20210825.0.93607-linux-arm.tar.gz"
    sha256 "2b0f481143a89137cf734d46cc4fd6a0bdc5962257f49c09e17b64bd3fba0d23"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210825.0.93607/kopia-20210825.0.93607-linux-arm64.tar.gz"
    sha256 "6de68796672f75ae294ee4fe4bab011e49f93c0d17645fef6f27950a706466ec"
  end

  def install
    bin.install "kopia"
  end
end

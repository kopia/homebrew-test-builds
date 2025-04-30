# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250430.0.183833"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.183833/kopia-20250430.0.183833-macOS-x64.tar.gz"
    sha256 "50a844886d1cb2374950564581dd07bb28cf37c0339f879f96ab56b0acc7d236"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.183833/kopia-20250430.0.183833-macOS-arm64.tar.gz"
    sha256 "b054ae26b5821af5b526b67d3d1e13b0d838e5b698bbe6adb3796880068cf665"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.183833/kopia-20250430.0.183833-linux-x64.tar.gz"
    sha256 "9981dec98748f477dbc4a4994a4672f9fea85283433dbef12e1465c381089433"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.183833/kopia-20250430.0.183833-linux-arm.tar.gz"
    sha256 "b7a939c22401fd946b02f05e01b27326edb6ec14391f288100b923dafdc0ce1b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.183833/kopia-20250430.0.183833-linux-arm64.tar.gz"
    sha256 "52423566413e1384bd3c4e3d1b6fd860387d0d3a79445a991c2e4198542d1c8c"
  end

  def install
    bin.install "kopia"
  end
end

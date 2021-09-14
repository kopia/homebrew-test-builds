# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210914.0.61319"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.61319/kopia-20210914.0.61319-macOS-x64.tar.gz"
    sha256 "6597675d078096029fbabd226472856bf52363ef945de1ce3fa73fb1da04c6c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.61319/kopia-20210914.0.61319-macOS-arm64.tar.gz"
    sha256 "94eb040d74e9ca03a7f5d4f4ac7d5a8f656fd98b1588765de0bce52c51d4d0d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.61319/kopia-20210914.0.61319-linux-x64.tar.gz"
    sha256 "951504ec389cac3e5eea1e7e6891f016100fe9903e90024a5447440e5f30c337"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.61319/kopia-20210914.0.61319-linux-arm.tar.gz"
    sha256 "259246a52521e4f860e4c8f2ce9407f9b2b0b5535f973c85199447e22f6a76fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210914.0.61319/kopia-20210914.0.61319-linux-arm64.tar.gz"
    sha256 "7e51b2054d4d1d7ff40967cc15191a873aeab0f5623370191864b65c8a838294"
  end

  def install
    bin.install "kopia"
  end
end

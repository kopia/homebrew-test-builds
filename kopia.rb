# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211007.0.84240"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211007.0.84240/kopia-20211007.0.84240-macOS-x64.tar.gz"
    sha256 "9fe336830f7642894c62b47c93f718ba7e0a4a03967d83f61bbe3347a700d406"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211007.0.84240/kopia-20211007.0.84240-macOS-arm64.tar.gz"
    sha256 "ab7a856396b669a3667eba86fec9b26769a0d8b6dd14be8fa50d6e5139b62bba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211007.0.84240/kopia-20211007.0.84240-linux-x64.tar.gz"
    sha256 "ab4f2c30ab9a3a1a38d6bb9ff7e699bc5219262642467d495064af79839c399c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211007.0.84240/kopia-20211007.0.84240-linux-arm.tar.gz"
    sha256 "b041d3c15f43806eb574833408f4502f4e03d9be52f678c712560763c8c0494d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211007.0.84240/kopia-20211007.0.84240-linux-arm64.tar.gz"
    sha256 "c42a2ac4f56d2f563f010c48ce19c2673f9665c4446db47ea6f112c734087aec"
  end

  def install
    bin.install "kopia"
  end
end

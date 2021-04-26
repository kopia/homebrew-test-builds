# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210425.0.212410"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.212410/kopia-20210425.0.212410-macOS-x64.tar.gz"
    sha256 "20a15ec9552f2d49a6b3355e1126d012cfa271a009bf9f12e6c8564507c55a01"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.212410/kopia-20210425.0.212410-macOS-arm64.tar.gz"
    sha256 "a0334fefa99ddee936b37895236eaef4636537eb0f013f66345cb8e7c03f5995"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.212410/kopia-20210425.0.212410-linux-x64.tar.gz"
    sha256 "a40828dcb930845d8c70d480f730ff473cc0329c2b263b7208716652319787d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.212410/kopia-20210425.0.212410-linux-arm.tar.gz"
    sha256 "a529d6574c9f2b256498fdeeb415ea463b7deda5d8e40361321be12ed829221f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.212410/kopia-20210425.0.212410-linux-arm64.tar.gz"
    sha256 "f3d54cfd030299ce5766ca478f9180a5884c39b402b1add937fb1bf9b81bd2c2"
  end

  def install
    bin.install "kopia"
  end
end

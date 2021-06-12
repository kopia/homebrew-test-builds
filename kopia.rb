# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210611.0.185825"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185825/kopia-20210611.0.185825-macOS-x64.tar.gz"
    sha256 "eb05acbaa71d56dba3ea00b718e39796d26a8d32fd302bc831b2738f00bf44de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185825/kopia-20210611.0.185825-macOS-arm64.tar.gz"
    sha256 "b04eb337e8f2faa14fe9b18f40606ceaa3714c22932a309fc424332e3d17ab40"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185825/kopia-20210611.0.185825-linux-x64.tar.gz"
    sha256 "50b7e75c367a7aa3648cd5fb6687e6ae5131c149dc3c5e1476b944293b441015"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185825/kopia-20210611.0.185825-linux-arm.tar.gz"
    sha256 "a4434563cae0cfd603a74fd5cb73a1c335ef32760505d2530e476be83dd1b47a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185825/kopia-20210611.0.185825-linux-arm64.tar.gz"
    sha256 "059213c906051056da164e93ea7bc3859b43fdd03c843d24df0ff3c55e7d30f2"
  end

  def install
    bin.install "kopia"
  end
end

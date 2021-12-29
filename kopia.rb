# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211228.0.212711"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211228.0.212711/kopia-20211228.0.212711-macOS-x64.tar.gz"
    sha256 "24d22bcddcd29fc8e36a62a4e4d461aeaf0758e2bcef3368b9a3d76fe3f3cb1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211228.0.212711/kopia-20211228.0.212711-macOS-arm64.tar.gz"
    sha256 "f99e4ac02e92e3a96598eae8a7daed226848b327a05ce8d2adac9ccad718f9e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211228.0.212711/kopia-20211228.0.212711-linux-x64.tar.gz"
    sha256 "7c16a4426c1d945a0e8c1ba96b7b5330007d5cc4e24dce2b28a0c6e63f5c3f27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211228.0.212711/kopia-20211228.0.212711-linux-arm.tar.gz"
    sha256 "16291469b7c1b2c062e8113b5fc88c6ec740ea50fd93d8fe199366f65a50d445"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211228.0.212711/kopia-20211228.0.212711-linux-arm64.tar.gz"
    sha256 "74ed4838ec228f42f8490e75e74d2ee777c2eb522c7505be83157d75e3d176b0"
  end

  def install
    bin.install "kopia"
  end
end

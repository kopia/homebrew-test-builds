# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230827.0.235318"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230827.0.235318/kopia-20230827.0.235318-macOS-x64.tar.gz"
    sha256 "1e93761d69b001658726b25ea9e2128d29eefab23215cee978666edb225821da"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230827.0.235318/kopia-20230827.0.235318-macOS-arm64.tar.gz"
    sha256 "3b45beb47303baff0b838bde8e778a21a24eb97f10417e1a2d77998a452ea769"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230827.0.235318/kopia-20230827.0.235318-linux-x64.tar.gz"
    sha256 "167220b8ddecb53e29a0ccc8ffb4389da318736223e1ffc77a115a0e92f9d8a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230827.0.235318/kopia-20230827.0.235318-linux-arm.tar.gz"
    sha256 "8ebbe781f6bb3a5d7f5a71247c1601bba9e5a8fab931198fd24dfbb70bef9b56"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230827.0.235318/kopia-20230827.0.235318-linux-arm64.tar.gz"
    sha256 "c6cbb881a9562a7bf2f1dbd9b2c524149e4bb1efe6486f90627506c433fdf1b1"
  end

  def install
    bin.install "kopia"
  end
end

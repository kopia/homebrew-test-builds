# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210926.0.150809"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210926.0.150809/kopia-20210926.0.150809-macOS-x64.tar.gz"
    sha256 "2b6913f63892b3f742df29f04de7ec1d4dd463f5fa736ff89c604be4e742839c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210926.0.150809/kopia-20210926.0.150809-macOS-arm64.tar.gz"
    sha256 "0e07425539c08d2aaa4b411ceaf698a6e27065672ba81e256432e14550211a4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210926.0.150809/kopia-20210926.0.150809-linux-x64.tar.gz"
    sha256 "3c0e86eb29713bd2ac5fbccf5a90559e7a4899fe5063c84c3a97164a5ded2f57"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210926.0.150809/kopia-20210926.0.150809-linux-arm.tar.gz"
    sha256 "27f072638224095725bf02f378ae89ecdb45ba2e9eef7284aacdecee643d50b2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210926.0.150809/kopia-20210926.0.150809-linux-arm64.tar.gz"
    sha256 "e68403d8d1d5003c8c0af10cb05f32fd3459345e2fdd615f4b527e8a906b1cc2"
  end

  def install
    bin.install "kopia"
  end
end

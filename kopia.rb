# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.203708"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.203708/kopia-20210717.0.203708-macOS-x64.tar.gz"
    sha256 "78324f76a9e7676ab333055ee75dedad6335a99070d0a738c754995a008b745d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.203708/kopia-20210717.0.203708-macOS-arm64.tar.gz"
    sha256 "4256714a43fbe191a47d708685163247f9178756605cc9ef7c7cf4c5eddcb418"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.203708/kopia-20210717.0.203708-linux-x64.tar.gz"
    sha256 "957563c47ced5f251b82426dceca453b78f732cc7a2cebf34c5d964ccf095355"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.203708/kopia-20210717.0.203708-linux-arm.tar.gz"
    sha256 "27b973f42e76f28f75de21841774421109045404330df4f86216c0e523493873"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.203708/kopia-20210717.0.203708-linux-arm64.tar.gz"
    sha256 "8bba06373709e8b2d0af0885f44c44ca4e601ed4d46a88acce899786b00e3e4d"
  end

  def install
    bin.install "kopia"
  end
end

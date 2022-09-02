# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220902.0.103559"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.103559/kopia-20220902.0.103559-macOS-x64.tar.gz"
    sha256 "386fb5bceb9ca74b9d9987219d565d2699b0155fb5bb9bcaf246780da58429ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.103559/kopia-20220902.0.103559-macOS-arm64.tar.gz"
    sha256 "83ad2f8a75fbbcf7e2c766e419ffaef7006ab7530b42bde095f0a8f807db5e44"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.103559/kopia-20220902.0.103559-linux-x64.tar.gz"
    sha256 "b4f43be0b579ac2d6680879788773466360c66b79bd43d21e59ccfb1652de519"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.103559/kopia-20220902.0.103559-linux-arm.tar.gz"
    sha256 "12f894f8f9bd5557c84175970498e40a02e0dc96a684c624f6035a2565bef331"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220902.0.103559/kopia-20220902.0.103559-linux-arm64.tar.gz"
    sha256 "4647e268f4393296eb156af784a511202b00eec46d7fc260dee96e101cb759fc"
  end

  def install
    bin.install "kopia"
  end
end

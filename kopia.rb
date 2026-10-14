# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261014.0.31223"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.31223/kopia-20261014.0.31223-macOS-x64.tar.gz"
    sha256 "06003660f12dfb067a59e11e2e13c1f7e4a8beef620aa78737d366e1db32a436"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.31223/kopia-20261014.0.31223-macOS-arm64.tar.gz"
    sha256 "bf503d23de59ee252ee8a1870e44387640ae2c38ae566a29d7b91c2b6d2d4ae1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.31223/kopia-20261014.0.31223-linux-x64.tar.gz"
    sha256 "bd0af8e74636456264ff28fab2c59caefc998bc0b4e90c15372993e722b98ec4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.31223/kopia-20261014.0.31223-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.31223/kopia-20261014.0.31223-linux-arm64.tar.gz"
    sha256 "b8bd289d81dfe1839a049e874b3fab0f0b0f4da1edfcbd3f26cc9effca795f84"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260927.0.40852"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.40852/kopia-20260927.0.40852-macOS-x64.tar.gz"
    sha256 "a3b2f00c67ce9128829e26fbaddde69140c9e0d1492ce080060e603ece1a74ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.40852/kopia-20260927.0.40852-macOS-arm64.tar.gz"
    sha256 "cffda47838f479b9102a8bf9da4584ecdd51b825db5507b3692c643954735191"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.40852/kopia-20260927.0.40852-linux-x64.tar.gz"
    sha256 "1175f288e2c3e27c8a5557b7c8198fbc30788c62c063c4c7dcbe8c6827ebeaa6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.40852/kopia-20260927.0.40852-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260927.0.40852/kopia-20260927.0.40852-linux-arm64.tar.gz"
    sha256 "ad0a10581404c6b584b9aea2ec5b2d5aafa9d5612e72ec265920e0f81bb4db1d"
  end

  def install
    bin.install "kopia"
  end
end

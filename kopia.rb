# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.20101"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.20101/kopia-20250529.0.20101-macOS-x64.tar.gz"
    sha256 "65f569c264723e7a20345c372f6761d6f5ed4b777fd1fd1e17ba099f1b0d1195"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.20101/kopia-20250529.0.20101-macOS-arm64.tar.gz"
    sha256 "b3216a894ea8f2c90dc416362e5dc3704bd032a0302685195b3fac313b5e52b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.20101/kopia-20250529.0.20101-linux-x64.tar.gz"
    sha256 "ea77ae8b4ff3e66fb3d5c20d48124e3688342e735859bd3bf71c25adee67679f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.20101/kopia-20250529.0.20101-linux-arm.tar.gz"
    sha256 "dca1dfdfc9525bd270eeb63451a6629fc618ddab33970620d733ccb7b68c2cd5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.20101/kopia-20250529.0.20101-linux-arm64.tar.gz"
    sha256 "39d3eaf2b75cd1b24f73fc345eb79bf6920d14e194dd81a1d7e1a3a02ffe9032"
  end

  def install
    bin.install "kopia"
  end
end

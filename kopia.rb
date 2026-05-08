# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260508.0.221537"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.221537/kopia-20260508.0.221537-macOS-x64.tar.gz"
    sha256 "adb6b4a27568770ffe1cb40f96e0f1625b0afba37c543a34574ccfa9cd6ddceb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.221537/kopia-20260508.0.221537-macOS-arm64.tar.gz"
    sha256 "3ab5c47fdf35f4829e155adcdd560709eaae53e959040cf786f61a54851a9d77"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.221537/kopia-20260508.0.221537-linux-x64.tar.gz"
    sha256 "58069b8bfed216e9c8d7ddd635d69f144e999184e7f9ddaf3fa76bf76769936a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.221537/kopia-20260508.0.221537-linux-arm.tar.gz"
    sha256 "a68686c0cad53d39f4827aae7914d3d1f22cfc14908bc8cda05ec63b70bd4487"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260508.0.221537/kopia-20260508.0.221537-linux-arm64.tar.gz"
    sha256 "06ffa5108ea1bc16fc7818ecd050121905190906d0cad0abd3e8e006fe7aac50"
  end

  def install
    bin.install "kopia"
  end
end

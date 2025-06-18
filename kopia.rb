# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250618.0.60808"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.60808/kopia-20250618.0.60808-macOS-x64.tar.gz"
    sha256 "985595552bd1bf10df6f51825df146c3c4f11f86794c4cd5e0a849e15fe6ab70"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.60808/kopia-20250618.0.60808-macOS-arm64.tar.gz"
    sha256 "8a2e8d9d0b011f551fe637be6d854105d6621c27445ef054bc282a44382f0e4e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.60808/kopia-20250618.0.60808-linux-x64.tar.gz"
    sha256 "0a233e126a2fb2a5f10b0892ebd62b81a75dd10d0e5d24b612e64af3104c8eda"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.60808/kopia-20250618.0.60808-linux-arm.tar.gz"
    sha256 "2bf6ba0dc3d823d7522455c64e6dad2263c2a80561854fdf7d2f42be30219bb5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.60808/kopia-20250618.0.60808-linux-arm64.tar.gz"
    sha256 "20833397650e92e5bd8ade892a8346bf26db30591d9f678fa5bfb2c755712406"
  end

  def install
    bin.install "kopia"
  end
end

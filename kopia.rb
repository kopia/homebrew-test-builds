# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210517.0.214711"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.214711/kopia-20210517.0.214711-macOS-x64.tar.gz"
    sha256 "edb2c101e28fdfc2198ad99ac613b6ee3ab09632c6b1ad960072bc778c625e9c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.214711/kopia-20210517.0.214711-macOS-arm64.tar.gz"
    sha256 "6a6a6805ce3057dcbf8df6949527de403891ac0cf380c239b8ebed16c56f7c0b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.214711/kopia-20210517.0.214711-linux-x64.tar.gz"
    sha256 "d74137b7f49f5163b71c3d5e67d92a85a9634e4096399d99240ef9d86b0cae23"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.214711/kopia-20210517.0.214711-linux-arm.tar.gz"
    sha256 "c36b3cce923c9813cb8a31002f0a0716e86cc7b7898caa1377242dbefb4ca822"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.214711/kopia-20210517.0.214711-linux-arm64.tar.gz"
    sha256 "3d676723f5bb27c8dbd9dd31a4d15ccf070106cd34ab39094337232d2ed7b2af"
  end

  def install
    bin.install "kopia"
  end
end

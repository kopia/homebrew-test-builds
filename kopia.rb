# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.185725"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185725/kopia-20210412.0.185725-macOS-x64.tar.gz"
    sha256 "c318ce2ec7112a6645f9ff0bd08a93404be2323844076c808940ab7cbc630d23"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185725/kopia-20210412.0.185725-macOS-arm64.tar.gz"
    sha256 "5ad2ff8bb74828b6ce13b4618d7c8ee07ec8c284b132a8d3c9b74309245ec421"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185725/kopia-20210412.0.185725-linux-x64.tar.gz"
    sha256 "91d7d9ff7076628de6febde08d1c2155096ca88842ba24f94e523cf0c8aa247e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185725/kopia-20210412.0.185725-linux-arm.tar.gz"
    sha256 "48426b9787a6d3d1e51ee896104794d4a2dfc4df2a02dc6fa64139d07efcec4d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185725/kopia-20210412.0.185725-linux-arm64.tar.gz"
    sha256 "f780692e19510d6ff22bdfe40c574f2264ccb4da5b24891b8e78e2a60783bfe1"
  end

  def install
    bin.install "kopia"
  end
end

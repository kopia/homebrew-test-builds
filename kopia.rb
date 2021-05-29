# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210528.0.193609"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210528.0.193609/kopia-20210528.0.193609-macOS-x64.tar.gz"
    sha256 "e972e57d1d3a78bc9e0e8eb291ff9907eb11a9c41442f6710a0585771fe9037b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210528.0.193609/kopia-20210528.0.193609-macOS-arm64.tar.gz"
    sha256 "74ab66434bce449cbcee3dd5d75d80545a8da5efac755a0db396d4603bfb4228"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210528.0.193609/kopia-20210528.0.193609-linux-x64.tar.gz"
    sha256 "4f5957b5a4eeca5815cda080aab2430d913e9dff5a73673d6ddbaca929982e92"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210528.0.193609/kopia-20210528.0.193609-linux-arm.tar.gz"
    sha256 "8938014cdced51677991640b973a29a8dae811263b4287c7d79de3ac356b5c89"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210528.0.193609/kopia-20210528.0.193609-linux-arm64.tar.gz"
    sha256 "f632744311810c0b8eb6e216e07158765930342542e5dc30b6aa96f78d1320e3"
  end

  def install
    bin.install "kopia"
  end
end

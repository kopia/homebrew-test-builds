# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240402.0.51241"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240402.0.51241/kopia-20240402.0.51241-macOS-x64.tar.gz"
    sha256 "beb9af81ee24a346ea99bc9d37c14ed8338a5f3fa74253b4b9921812eaf4045b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240402.0.51241/kopia-20240402.0.51241-macOS-arm64.tar.gz"
    sha256 "3b0dfcaa6ec8be75638ca0cb1334b3c56aa9228658afe59f715774c2287a1796"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240402.0.51241/kopia-20240402.0.51241-linux-x64.tar.gz"
    sha256 "34059cf71dd1adea78ea237e2ab3ee9205d798b429e956ac9c12d668e7503e0e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240402.0.51241/kopia-20240402.0.51241-linux-arm.tar.gz"
    sha256 "11ccea5fc24c38e4d84844855d3d3d8aba587bf30c6efb07c2dadb6cac991eed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240402.0.51241/kopia-20240402.0.51241-linux-arm64.tar.gz"
    sha256 "2ef732720d7f7d87a2a7b10c170e7e024e6ec74439dc65f1b856a9f78a51ada4"
  end

  def install
    bin.install "kopia"
  end
end

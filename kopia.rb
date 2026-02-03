# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.222316"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.222316/kopia-20260203.0.222316-macOS-x64.tar.gz"
    sha256 "2409295fed95bdb9ba45a9697348e0dbaff94671f16de0b4affc87729e3abd2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.222316/kopia-20260203.0.222316-macOS-arm64.tar.gz"
    sha256 "230d16eacfe2e422ede3054043e573186b79bd00ad49dcc4000de3972796ce91"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.222316/kopia-20260203.0.222316-linux-x64.tar.gz"
    sha256 "ea8d6c40508638443fe5ec847f684e1495ede03a231b656dc3cfe19080044518"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.222316/kopia-20260203.0.222316-linux-arm.tar.gz"
    sha256 "d95ea24a1c32e38afb9e489f03ef327650f7b16f373e9608b9456921883889c1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.222316/kopia-20260203.0.222316-linux-arm64.tar.gz"
    sha256 "31fc6c82356b160fb3800afcaa382b551d5b2707173900ef6a099d293058a167"
  end

  def install
    bin.install "kopia"
  end
end

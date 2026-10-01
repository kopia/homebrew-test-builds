# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261001.0.31708"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.31708/kopia-20261001.0.31708-macOS-x64.tar.gz"
    sha256 "d1b14059d648dcc397773fce530a65e6aa5760e29ccad6202065bc2859cbc106"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.31708/kopia-20261001.0.31708-macOS-arm64.tar.gz"
    sha256 "c72ec7416cf74265b754c733ed3ea20670681226a76ffad29355c3d778de8e4e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.31708/kopia-20261001.0.31708-linux-x64.tar.gz"
    sha256 "29dc2f2ac74465ac88f27900739dfb8c753f31e6442fcb6bd1f032408b7e7d5d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.31708/kopia-20261001.0.31708-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261001.0.31708/kopia-20261001.0.31708-linux-arm64.tar.gz"
    sha256 "a4c7d321f6f2b41408d3d351a7547592412a01a80d9159c73f5b843feda35a37"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230916.0.161956"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.161956/kopia-20230916.0.161956-macOS-x64.tar.gz"
    sha256 "ca1d3db3981763283270a8464f8134c0ad28b03e4b4fa390a21ceadaf017aa75"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.161956/kopia-20230916.0.161956-macOS-arm64.tar.gz"
    sha256 "ac9cee06bc423165da2569f2912671ca74690988bf00e39be9119fe480fbb481"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.161956/kopia-20230916.0.161956-linux-x64.tar.gz"
    sha256 "96bde1267dad9ca34d1916cf9c8fb5ab3ad1dc0528ba8f86151eb4edb22669ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.161956/kopia-20230916.0.161956-linux-arm.tar.gz"
    sha256 "4965b5cacc5707013b1b566cef67084bcb9fcb375b2e80f3d4e22f928c9ef070"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.161956/kopia-20230916.0.161956-linux-arm64.tar.gz"
    sha256 "33c09ead331c0a7ca99c5d86fc47016168aad2ad026e296bec626ce84980f838"
  end

  def install
    bin.install "kopia"
  end
end

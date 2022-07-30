# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220730.0.32255"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.32255/kopia-20220730.0.32255-macOS-x64.tar.gz"
    sha256 "01e58f7dc7b7cec9c6a225d0c3ecfd92cfee36e25a3942300e9f012a40646dbe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.32255/kopia-20220730.0.32255-macOS-arm64.tar.gz"
    sha256 "68babc33a5741e1a172f376e161e7e15e000b7488605e4ec429c6212e600913a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.32255/kopia-20220730.0.32255-linux-x64.tar.gz"
    sha256 "6ccdaba705e93ccab575cb9c8187bb09747113e15a1c2205c17598ff6a9e8f6c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.32255/kopia-20220730.0.32255-linux-arm.tar.gz"
    sha256 "9d46d095182acbffd7ed4cb9d59283b8305dca851c5fc2a9bcc44b9a5eaa2bbd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.32255/kopia-20220730.0.32255-linux-arm64.tar.gz"
    sha256 "c0e472aa7056450f74d836e7d80534e899efe90c3bfd524dee07d8007955c82d"
  end

  def install
    bin.install "kopia"
  end
end

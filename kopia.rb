# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260224.0.42919"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260224.0.42919/kopia-20260224.0.42919-macOS-x64.tar.gz"
    sha256 "f7832f54c6dfd157a65dc0a5eae70f1d79c504c43a227389753b682476c3c1e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260224.0.42919/kopia-20260224.0.42919-macOS-arm64.tar.gz"
    sha256 "fd0d0f4bb4f9a569482be98846d790ade27e6eb7d56fc0ca28190e085325d820"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260224.0.42919/kopia-20260224.0.42919-linux-x64.tar.gz"
    sha256 "5ad7d19ce0b638d8d959f6952464ebf2aaca82ee324284d371b07551f5090640"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260224.0.42919/kopia-20260224.0.42919-linux-arm.tar.gz"
    sha256 "903bd5042704e90a0e0c4cefe071df080da06cfabb14a496914fedf2d7a6afa4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260224.0.42919/kopia-20260224.0.42919-linux-arm64.tar.gz"
    sha256 "728a844e9ecfaf2dc57371b6f7bd8b02eabf499b8450364c71f935a94e3b1787"
  end

  def install
    bin.install "kopia"
  end
end

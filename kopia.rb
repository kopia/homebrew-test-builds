# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211009.0.50218"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.50218/kopia-20211009.0.50218-macOS-x64.tar.gz"
    sha256 "01158ae6fd1e680d69252bfd6e8aee49947bb5cf562cf46637598a85a1f6866e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.50218/kopia-20211009.0.50218-macOS-arm64.tar.gz"
    sha256 "0f4a237c054422c95e00e6492a7abb845f3f275e17f2dd08da5d3b3a3bee6417"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.50218/kopia-20211009.0.50218-linux-x64.tar.gz"
    sha256 "c8cc2042db9f33c6c54275f89e0e67bdb903d993f408c9364cf51a06aaf61b13"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.50218/kopia-20211009.0.50218-linux-arm.tar.gz"
    sha256 "9d710937231e5e4b100da6de0bbe14305f4d6111b0c20b6b7d102dc81fe3c5f5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.50218/kopia-20211009.0.50218-linux-arm64.tar.gz"
    sha256 "b7199e7c539a228ccfafd054a423f101725cf124bcdc8b04320e24c20a7d4c2b"
  end

  def install
    bin.install "kopia"
  end
end

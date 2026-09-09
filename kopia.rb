# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260909.0.40929"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.40929/kopia-20260909.0.40929-macOS-x64.tar.gz"
    sha256 "8ffdb040ba40edb4a87ca9e01050b3bb950c66e0b7d948bc6b9d148dde5d7b10"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.40929/kopia-20260909.0.40929-macOS-arm64.tar.gz"
    sha256 "684da41399ba749ba5612b7614fa82361a4d2d8de01bb633b4a65e950ba9e83a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.40929/kopia-20260909.0.40929-linux-x64.tar.gz"
    sha256 "6bd112ba4b79c176842cbe17f911a7c6ea16696f7c21c4c9cf3fc13c475b5463"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.40929/kopia-20260909.0.40929-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.40929/kopia-20260909.0.40929-linux-arm64.tar.gz"
    sha256 "77d9443370b1a66c73ec1d5033495b28a61d59d21738c03c40e1dc5a7e0a3a0c"
  end

  def install
    bin.install "kopia"
  end
end

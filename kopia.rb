# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250525.0.232535"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.232535/kopia-20250525.0.232535-macOS-x64.tar.gz"
    sha256 "dbdce22eadb2534a09e1b5d74ecbafbd5d89092314fad4f832c234cf4716ee8f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.232535/kopia-20250525.0.232535-macOS-arm64.tar.gz"
    sha256 "d37abb4fd9ecb7c0759c6a3749a753e1fca5fa63448bfcdd88873cbaf7f43155"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.232535/kopia-20250525.0.232535-linux-x64.tar.gz"
    sha256 "f3e9ef0221be33d3507ddc479d6cd356ceccf206e639b8adee459532f5f50191"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.232535/kopia-20250525.0.232535-linux-arm.tar.gz"
    sha256 "320ae196bd891aafc94b3b58e333b3ec4cdb099fba1b7e2bc7c5df9ad6e929c4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250525.0.232535/kopia-20250525.0.232535-linux-arm64.tar.gz"
    sha256 "800ae907b1069bca17db630ac2671a7fc667b43980ed37df7d3d358a069ccdf1"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250912.0.209"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.209/kopia-20250912.0.209-macOS-x64.tar.gz"
    sha256 "4f9d6f41a91df6eafc44096e8e022ba50254236c1735f2495ffdcabeb41944e5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.209/kopia-20250912.0.209-macOS-arm64.tar.gz"
    sha256 "fcdb48f7480023dad55ed550b1e29deb409c083f84c59399726c447a9c30fe17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.209/kopia-20250912.0.209-linux-x64.tar.gz"
    sha256 "75dc0e50b5ec0092a16a7ab243c6688a6dd7ad8ab801ddadafb4ea042944d10f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.209/kopia-20250912.0.209-linux-arm.tar.gz"
    sha256 "93390469dc148a306b7d8df7448186b5f8073ecfdc0fae97aed04a3a332ff2e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250912.0.209/kopia-20250912.0.209-linux-arm64.tar.gz"
    sha256 "376899d0cba97c6bf9c136a9e06f327d23d4d17a31b19c9223c73b90bae130c0"
  end

  def install
    bin.install "kopia"
  end
end

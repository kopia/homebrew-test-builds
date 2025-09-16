# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250916.0.60034"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.60034/kopia-20250916.0.60034-macOS-x64.tar.gz"
    sha256 "82ee8f33dc1528a36a598513de2428ac0749db24f0870f34164f4633680aec29"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.60034/kopia-20250916.0.60034-macOS-arm64.tar.gz"
    sha256 "9624979be21f7569c9709b1248cd07fcd47f5e4fc1a864f882af260e8f94518c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.60034/kopia-20250916.0.60034-linux-x64.tar.gz"
    sha256 "47a6406221c63a9fbb81a03f8c233de94110a6a894e932ed9471bfe8a80c370d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.60034/kopia-20250916.0.60034-linux-arm.tar.gz"
    sha256 "3a899ae7d9de7f0f9c13fa4552d3a0baa194b0b23a15e96fab087e2fcc2843bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.60034/kopia-20250916.0.60034-linux-arm64.tar.gz"
    sha256 "e07a7d821b8b257f201ca71609e1d8b6f3c162182d2df69ecece3329631f962a"
  end

  def install
    bin.install "kopia"
  end
end

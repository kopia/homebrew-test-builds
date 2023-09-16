# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230916.0.100113"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.100113/kopia-20230916.0.100113-macOS-x64.tar.gz"
    sha256 "7a12d8d0f2dda7d55bb94fd07562305b4944e398038ba039039dc7dd54eff3ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.100113/kopia-20230916.0.100113-macOS-arm64.tar.gz"
    sha256 "a71415d61324572fe2b232709cd31c1d2efaf6cd6125aae89c242c7f4964f40c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.100113/kopia-20230916.0.100113-linux-x64.tar.gz"
    sha256 "68236060fceb5e50356d4ada089e3e372011f6eb2eae803f17b269fd0278c3b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.100113/kopia-20230916.0.100113-linux-arm.tar.gz"
    sha256 "5c14781f20a09ae6a3a1be77d3c4f6fe2275e11eaa21ae0e474d655e6e13bf8c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230916.0.100113/kopia-20230916.0.100113-linux-arm64.tar.gz"
    sha256 "36f60fa3c4abbaa5db67884aa6113ece88e3eba02644f129c6b1f314e940dd30"
  end

  def install
    bin.install "kopia"
  end
end

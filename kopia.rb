# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250401.0.200432"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.200432/kopia-20250401.0.200432-macOS-x64.tar.gz"
    sha256 "b2235f5d636de605a79258e9960888886735a7ebb77e5e6eb8d4ee8d87dd2301"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.200432/kopia-20250401.0.200432-macOS-arm64.tar.gz"
    sha256 "afc4ec234f1abe4cca32f83d3c7d021ee431879a8d0a72fd6aff6568073f73e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.200432/kopia-20250401.0.200432-linux-x64.tar.gz"
    sha256 "3915ec8d7bdd20040700d2ffe00d3f015567a00fa1cafe41b62d83974e72eab1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.200432/kopia-20250401.0.200432-linux-arm.tar.gz"
    sha256 "e8713aa0984ec313547037ec660b51b93f0c1cfb1380ecba39e9e29e267fc49b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.200432/kopia-20250401.0.200432-linux-arm64.tar.gz"
    sha256 "65c0055fe9534cc6efe29a32cb76414306875025c36f3c23d55fdd2233bbafcf"
  end

  def install
    bin.install "kopia"
  end
end

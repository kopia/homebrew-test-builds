# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.64715"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.64715/kopia-20250602.0.64715-macOS-x64.tar.gz"
    sha256 "5460ffabb5ed34768b3d860a712723df62a545c8bc6ca32cc9b93b69c2732508"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.64715/kopia-20250602.0.64715-macOS-arm64.tar.gz"
    sha256 "a56817d425156f47c13b006b1011c3d43b93e47ddbe2ce916490c6a494946dcd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.64715/kopia-20250602.0.64715-linux-x64.tar.gz"
    sha256 "e6c6ecd1e86c94d5622930e67f9e849a3dc9ea9a4d6305a3ebf64c7c38832253"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.64715/kopia-20250602.0.64715-linux-arm.tar.gz"
    sha256 "aa607a97df084aedba1dba25eeb0d620d3090b67baba0982f225fb5bfe3a00ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.64715/kopia-20250602.0.64715-linux-arm64.tar.gz"
    sha256 "ce0c1e2478cf34a887984567a89ba628574c503369fd5cb3977d0c76ee1c3dbf"
  end

  def install
    bin.install "kopia"
  end
end

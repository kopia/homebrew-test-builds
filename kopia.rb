# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250817.0.34129"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.34129/kopia-20250817.0.34129-macOS-x64.tar.gz"
    sha256 "10e0c2adc47809353820f4118da1993f73a5af6bb62c9be5e5610273671f8016"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.34129/kopia-20250817.0.34129-macOS-arm64.tar.gz"
    sha256 "4ea4e6f02942c2a1dd53577cce6edabdccae263f0e06f7666c9f53c21729f873"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.34129/kopia-20250817.0.34129-linux-x64.tar.gz"
    sha256 "7247a79be26b4a7415c79403d57799c5b2027b9d691e527939709ab69b7a1a0f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.34129/kopia-20250817.0.34129-linux-arm.tar.gz"
    sha256 "03265412e67e4967857aa66293c58a149043b1edcfeb3ec6cb94c24d8bb9d487"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.34129/kopia-20250817.0.34129-linux-arm64.tar.gz"
    sha256 "b7f6ecbd32fc4204a80b67f789e2210c103ae59bd0323c29497057516be5ba4c"
  end

  def install
    bin.install "kopia"
  end
end

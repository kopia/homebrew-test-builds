# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.23330"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.23330/kopia-20251113.0.23330-macOS-x64.tar.gz"
    sha256 "b3e6b348504de9a601c063c778a3d07fe99dd3741dfc186c77760890d3ff5c9b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.23330/kopia-20251113.0.23330-macOS-arm64.tar.gz"
    sha256 "bc36e6686c0c2dbf9969a77450b98b4706eed24f3e24bdb7ef94a1e9e442608e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.23330/kopia-20251113.0.23330-linux-x64.tar.gz"
    sha256 "7909892a39d3d0d1c941da9d655f8f3576d9644f90efed244d2aa89ffa3b1770"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.23330/kopia-20251113.0.23330-linux-arm.tar.gz"
    sha256 "ce8c84b36e9602f0dcd8814857fdd1a28f2b7bfa0633b0e79879c8a675003822"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.23330/kopia-20251113.0.23330-linux-arm64.tar.gz"
    sha256 "947045ad784639cfae5c966ce10319de5ba3b512cb45d6d3a8d3177ba9e77a49"
  end

  def install
    bin.install "kopia"
  end
end

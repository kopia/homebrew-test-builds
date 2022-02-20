# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220220.0.110133"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.110133/kopia-20220220.0.110133-macOS-x64.tar.gz"
    sha256 "893a34a7243968a4aaebc3b5ae58312ee666c16fb31a5af22d63b1e0952ec509"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.110133/kopia-20220220.0.110133-macOS-arm64.tar.gz"
    sha256 "0dffc1e2fa6930069501057494900fd884a7d3929bd67e37c9c2f8dbd001931b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.110133/kopia-20220220.0.110133-linux-x64.tar.gz"
    sha256 "d22eb2be2d4ff5a366129be05543fc5e496311c631d3ad5ba2eee77b2416b014"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.110133/kopia-20220220.0.110133-linux-arm.tar.gz"
    sha256 "c50342bf26c9ef7d82cdfb84c90d9426e2ba46d306a80de58f924d631c09f557"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220220.0.110133/kopia-20220220.0.110133-linux-arm64.tar.gz"
    sha256 "e83be32fd2ce7e85166649b7f4dd465ba4851793a99e7bce0077891a649ef9c0"
  end

  def install
    bin.install "kopia"
  end
end

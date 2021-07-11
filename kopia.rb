# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.205814"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.205814/kopia-20210710.0.205814-macOS-x64.tar.gz"
    sha256 "03f2e64cb267b8f550e31b0afa38f79b1c02d33fe26b8ae0af2346ac00932099"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.205814/kopia-20210710.0.205814-macOS-arm64.tar.gz"
    sha256 "0f0a84db39dfb41d1b000827bc6f8635a5f02d09428f841a6333b21dcc6a7202"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.205814/kopia-20210710.0.205814-linux-x64.tar.gz"
    sha256 "816553282245a11c870daaed08b19bf9fc3472cb727204bdac05c239927e2f27"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.205814/kopia-20210710.0.205814-linux-arm.tar.gz"
    sha256 "9299219b7f9ad39d74923c37fbf3a248a07a1c0acfcfb2235031afbda0da5b63"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.205814/kopia-20210710.0.205814-linux-arm64.tar.gz"
    sha256 "72eddee6db4ff8672193a364759f39cddd8ed9f82fa1b364a80348270879070b"
  end

  def install
    bin.install "kopia"
  end
end

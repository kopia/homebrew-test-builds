# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211216.0.152007"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.152007/kopia-20211216.0.152007-macOS-x64.tar.gz"
    sha256 "b11bfb2c3ba3160cfd1c84f3ce1331b22570c2728a78fd1e090d3f18efcd924b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.152007/kopia-20211216.0.152007-macOS-arm64.tar.gz"
    sha256 "74c4ceb99095192004f2d8253afb50f2a83d54410671e36772007ab7fa60b870"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.152007/kopia-20211216.0.152007-linux-x64.tar.gz"
    sha256 "a55c9b2eb2fe4f8c6ca5804cd091a25790e972c16e3650ac00d61c0a8a16ab4b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.152007/kopia-20211216.0.152007-linux-arm.tar.gz"
    sha256 "3c3a5c3cfc0529d9d7409d9e07cb333921bb770fc0ce49f8e35fae905553fe53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211216.0.152007/kopia-20211216.0.152007-linux-arm64.tar.gz"
    sha256 "73ce44516ecc79771c64a39834456aa4ae6ec1bb01b81574d6759c1f946c096f"
  end

  def install
    bin.install "kopia"
  end
end

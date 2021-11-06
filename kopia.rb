# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.100605"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.100605/kopia-20211106.0.100605-macOS-x64.tar.gz"
    sha256 "b846c209d8bfca43858ed59cab69aa70631c5479d7889f48893a85230bf0d18f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.100605/kopia-20211106.0.100605-macOS-arm64.tar.gz"
    sha256 "b13d3c38f6565506aa1a4815764ce41b6e7d170f46a2c545a9d8411a84cd3a66"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.100605/kopia-20211106.0.100605-linux-x64.tar.gz"
    sha256 "8a90ae96491ff9d4218c8deef490e8b64aa04d62c386f6515bf8b5bcf480a840"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.100605/kopia-20211106.0.100605-linux-arm.tar.gz"
    sha256 "2fc501775aa545ab0dc9681cce1446ba9ba58f0b3ccf7c3898a1cda3ee5f8eeb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.100605/kopia-20211106.0.100605-linux-arm64.tar.gz"
    sha256 "46b400f5d0b02b5a8ba7f51d42e1a6fcee5b27af06a96bebb1bdd57287c33419"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241105.0.230245"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.230245/kopia-20241105.0.230245-macOS-x64.tar.gz"
    sha256 "0b66ad9f4a90e9acf8dfac561b867b150f554fee792857b128141273df062795"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.230245/kopia-20241105.0.230245-macOS-arm64.tar.gz"
    sha256 "d64df8952039db064fb47abc1a4af298912c6d22d87e8f3b0d904f075b5a9ef7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.230245/kopia-20241105.0.230245-linux-x64.tar.gz"
    sha256 "8d32d1a2854fc4bf8510aebf3bcf7a3698312f5a0522d6d953479fade45089b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.230245/kopia-20241105.0.230245-linux-arm.tar.gz"
    sha256 "cda6a9c855ed392c9f3e9448692d32af799f5948dfeafab360d21cdb2814bb64"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241105.0.230245/kopia-20241105.0.230245-linux-arm64.tar.gz"
    sha256 "d3bdb9f3ecc5b9220b582c880d2414aeb514a5f1d49aae48455883d85e2dc69e"
  end

  def install
    bin.install "kopia"
  end
end

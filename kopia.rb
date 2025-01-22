# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250122.0.123042"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.123042/kopia-20250122.0.123042-macOS-x64.tar.gz"
    sha256 "102d338d405cf94382cf49afd3c7aaf0348b7c88604cd54ba97ab9d470601c3e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.123042/kopia-20250122.0.123042-macOS-arm64.tar.gz"
    sha256 "f87207d12e9401c3ab9849e9e1bddfbf244e02712884ce9174b1ff0c0cd47f4e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.123042/kopia-20250122.0.123042-linux-x64.tar.gz"
    sha256 "9f1e2815184580db17fa82054e14d37e6f195b69f0fedfcda2cf27bc2d760f2b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.123042/kopia-20250122.0.123042-linux-arm.tar.gz"
    sha256 "e193c149cc1da03a2af1889fdf56e8b3873e7000c80a4b6f3b31685caa9504af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.123042/kopia-20250122.0.123042-linux-arm64.tar.gz"
    sha256 "6e7424dddee761966cb97281d30faef6b01cf1347710b733b63dd6ec1206ab6d"
  end

  def install
    bin.install "kopia"
  end
end

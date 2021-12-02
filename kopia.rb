# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.202322"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202322/kopia-20211201.0.202322-macOS-x64.tar.gz"
    sha256 "55985bb8087f1e43b10415d3162632377f73ceb94d943016b226454f36426fd5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202322/kopia-20211201.0.202322-macOS-arm64.tar.gz"
    sha256 "be629427f54e6e8083f9f4e3c60eac873f2bd3afc3e9d2454d5b0fd8e49a3b9f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202322/kopia-20211201.0.202322-linux-x64.tar.gz"
    sha256 "6004a314e802c18d6d4c04662d7b3a7390525e4231f1567a1a181b80af0baed5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202322/kopia-20211201.0.202322-linux-arm.tar.gz"
    sha256 "cf7f8f961e8a9cc08018ec3a6a8f9f49b0f592ba9f4d752ec172ac35246a4819"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202322/kopia-20211201.0.202322-linux-arm64.tar.gz"
    sha256 "9c24fe2b469f5d0e3c75951e07e3561b6f66e9642dec339386b8c53f835fc364"
  end

  def install
    bin.install "kopia"
  end
end

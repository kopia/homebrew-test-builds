# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.205122"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.205122/kopia-20260203.0.205122-macOS-x64.tar.gz"
    sha256 "63be57378e16de3276190e7ad683aa66a9b751ec4ebd894a95c599b19d709403"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.205122/kopia-20260203.0.205122-macOS-arm64.tar.gz"
    sha256 "384b57863bf0faa0a86b72363c998e3d85f05c1bf80f7d46fb4718a7f2775f8e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.205122/kopia-20260203.0.205122-linux-x64.tar.gz"
    sha256 "e7f50486d5116cda3d3d43fe9109bd5fac8e1e1146dc49c1249b305e6b243088"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.205122/kopia-20260203.0.205122-linux-arm.tar.gz"
    sha256 "2579597cee2f770a68658171718900320ac9f0a22e468463c73cb3a6d4868db0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.205122/kopia-20260203.0.205122-linux-arm64.tar.gz"
    sha256 "4e04c1b2a752c59c06d8f4243c86e963f2af29830cf7b24ddbf91dda966b2256"
  end

  def install
    bin.install "kopia"
  end
end

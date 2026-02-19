# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260219.0.20942"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.20942/kopia-20260219.0.20942-macOS-x64.tar.gz"
    sha256 "c584460fd75b9d4cec8e3e9765c6643ef6956a192c6010e3405aac21ad5d0eb1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.20942/kopia-20260219.0.20942-macOS-arm64.tar.gz"
    sha256 "7b477bb6c9aaf79a3a0426bd47e609966e6f55f78f741c65b1a262d32adfd3d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.20942/kopia-20260219.0.20942-linux-x64.tar.gz"
    sha256 "cd9b7ff7abf0e9a024695da8535f1f660e4cda4f3a61c529e303baae5f8384ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.20942/kopia-20260219.0.20942-linux-arm.tar.gz"
    sha256 "91b5c147d1a25e95b13ec75fc626c443798647d7ab6f34b64edb7c1f47c13e97"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.20942/kopia-20260219.0.20942-linux-arm64.tar.gz"
    sha256 "91adfeed00e329e94c04e8e096ed9cd77cfacce509e69b644c0c4e95b0342c89"
  end

  def install
    bin.install "kopia"
  end
end

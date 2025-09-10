# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250910.0.1219"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.1219/kopia-20250910.0.1219-macOS-x64.tar.gz"
    sha256 "c5a509c880657c3846fd0e17ba3a6a21cc4c2aca21acb581869ce9b8baa5b2aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.1219/kopia-20250910.0.1219-macOS-arm64.tar.gz"
    sha256 "f28b636e5256eab044fc8833e5a70a95a0416721f59608f97625fbbbc74a6f97"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.1219/kopia-20250910.0.1219-linux-x64.tar.gz"
    sha256 "a6227b2428ace7f826eac466f7b76461c5340aaa161aed32a5dcd1b431cb6e2c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.1219/kopia-20250910.0.1219-linux-arm.tar.gz"
    sha256 "ace4e0302e9116a2fd7bb5cdcf307a22489973a8efa8cf9a7efb36ba2b1ca17b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250910.0.1219/kopia-20250910.0.1219-linux-arm64.tar.gz"
    sha256 "a03de18fe89ca5b053be6b09500c2910838517f4e376e2a97ca850d04d088c55"
  end

  def install
    bin.install "kopia"
  end
end

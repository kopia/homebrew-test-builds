# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220103.0.183140"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.183140/kopia-20220103.0.183140-macOS-x64.tar.gz"
    sha256 "96c90d80a95153f23a6ee599f2837c6296749def853a5d1e7d790bb54e404dc6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.183140/kopia-20220103.0.183140-macOS-arm64.tar.gz"
    sha256 "cb8eda072118aa179372d410458a3ef169a175fd2be2b6c1ba0d34e8b26dc097"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.183140/kopia-20220103.0.183140-linux-x64.tar.gz"
    sha256 "cf5a4063403c297c7d9f0176e0cd3c9f1616347d9fc7e3380e058bb686327c43"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.183140/kopia-20220103.0.183140-linux-arm.tar.gz"
    sha256 "7d5aee314971fa0c1ddad766874388c1cbb9b316d98525e4ab32b687afc42ff9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220103.0.183140/kopia-20220103.0.183140-linux-arm64.tar.gz"
    sha256 "f51b143c77fe93b5039b9a6a62baac32cd94b4575e9b2363bb4311c7f236e0d0"
  end

  def install
    bin.install "kopia"
  end
end

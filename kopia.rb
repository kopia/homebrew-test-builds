# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240227.0.123014"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240227.0.123014/kopia-20240227.0.123014-macOS-x64.tar.gz"
    sha256 "9bbea9138f912445243ea47aa5c576e3e87aed96a074457addc5b0035bb28a1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240227.0.123014/kopia-20240227.0.123014-macOS-arm64.tar.gz"
    sha256 "bf5ad8bb258ecfbb5fbca3b71030d6a567947c07b234f0a30e96c876dba2b521"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240227.0.123014/kopia-20240227.0.123014-linux-x64.tar.gz"
    sha256 "d47b96fd18dce0b6e9bcdb539d9e6a4ba8e39fba64d311f92ad53064354e40f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240227.0.123014/kopia-20240227.0.123014-linux-arm.tar.gz"
    sha256 "c179bbb6e372ae926c37c650cc6e3508b2dc694d2a7ec1d1ac9417e3465b37bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240227.0.123014/kopia-20240227.0.123014-linux-arm64.tar.gz"
    sha256 "19733e446c76cf732a2f3bb3e490340defaac704afa08eee26bf93ab3fd90d7b"
  end

  def install
    bin.install "kopia"
  end
end

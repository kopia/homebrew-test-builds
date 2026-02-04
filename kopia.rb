# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260204.0.62154"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260204.0.62154/kopia-20260204.0.62154-macOS-x64.tar.gz"
    sha256 "7243aaa89f410958110285cfa9d259a30ad6a5f06c27abc89a5a93adad7359c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260204.0.62154/kopia-20260204.0.62154-macOS-arm64.tar.gz"
    sha256 "c15ad0e0042616cd62f74c9c86c1c952c0baba3dd01bfc5a94849675429a088b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260204.0.62154/kopia-20260204.0.62154-linux-x64.tar.gz"
    sha256 "d32186ab1468a340011551678b7bbb29cd546762f55729291c9e20000556c542"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260204.0.62154/kopia-20260204.0.62154-linux-arm.tar.gz"
    sha256 "bc07fe88eb070f8b67fa5e182784e1758a556be30b04132000f2c2bd2f2af4ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260204.0.62154/kopia-20260204.0.62154-linux-arm64.tar.gz"
    sha256 "9d91bea33e357bf60cfc1078a1643c0a2ec6798497cf6564d57c791e4779ba36"
  end

  def install
    bin.install "kopia"
  end
end

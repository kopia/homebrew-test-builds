# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241006.0.21633"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.21633/kopia-20241006.0.21633-macOS-x64.tar.gz"
    sha256 "eec3e9f2f6d69aa13543f3cc1814d7ba9bacd4d1b8229a70b892a92039426b87"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.21633/kopia-20241006.0.21633-macOS-arm64.tar.gz"
    sha256 "9866206254f7d2d1f58001c9d9767e16a0c371423ce84dd82e1794ff35ff1878"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.21633/kopia-20241006.0.21633-linux-x64.tar.gz"
    sha256 "e0dbd63fc97606eca0cf881e2a8745141a480663e49784d0e2ba57de04aac0bd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.21633/kopia-20241006.0.21633-linux-arm.tar.gz"
    sha256 "896df3b7ccd78745fd1510d9f678cc55c64b3338204a20b74905de3ee22c0e93"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.21633/kopia-20241006.0.21633-linux-arm64.tar.gz"
    sha256 "58ff7a4529bff915a2e5e700dd90d0fdfc3619062d1a2a044ec489eb46f7830a"
  end

  def install
    bin.install "kopia"
  end
end

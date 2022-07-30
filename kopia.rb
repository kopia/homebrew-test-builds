# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220730.0.141352"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.141352/kopia-20220730.0.141352-macOS-x64.tar.gz"
    sha256 "1f5239fab63a3a1be701232dfe66870b31a0512c9c7b49d4397e19d110188ab9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.141352/kopia-20220730.0.141352-macOS-arm64.tar.gz"
    sha256 "37ff9e5b11a977458ce70db9f8185cf6c7a28333cde951d71c6e170dbbfe45a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.141352/kopia-20220730.0.141352-linux-x64.tar.gz"
    sha256 "fa703c9d3ec9f64f75e0c7344cbfe9caa4ccd8e481fb81e637a0b459f73debdb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.141352/kopia-20220730.0.141352-linux-arm.tar.gz"
    sha256 "8884673916ce773e76ff3af4ae089cd4a05aec4be660e59562b486d250e120fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220730.0.141352/kopia-20220730.0.141352-linux-arm64.tar.gz"
    sha256 "2d58e1c19609f0c62cda81c27b30365c8721f7188df0517cd1f098ee2ad27f88"
  end

  def install
    bin.install "kopia"
  end
end

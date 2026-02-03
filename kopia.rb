# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.200632"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.200632/kopia-20260203.0.200632-macOS-x64.tar.gz"
    sha256 "ead9e1a7ba2a7f7bdf0a73a297ed1b9fd4dd5f1dd459c56b3aca661a8dd9a38d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.200632/kopia-20260203.0.200632-macOS-arm64.tar.gz"
    sha256 "ac74154d0c759e93be965b6b7c8254c92c4d1e7a062effc8f0474a398ea77fb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.200632/kopia-20260203.0.200632-linux-x64.tar.gz"
    sha256 "fc7fab6c74c3febe79de32adce5e14c6492e9e4e95569e43c48057cd10706ca0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.200632/kopia-20260203.0.200632-linux-arm.tar.gz"
    sha256 "229926f08c939d6efa60bb52976440cfda79c19d71cc92e7639767d1b645a11f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.200632/kopia-20260203.0.200632-linux-arm64.tar.gz"
    sha256 "836b1f2e39aefd57e8d2a0fae966cedaf7ffe13c3945690b59196d48ed144153"
  end

  def install
    bin.install "kopia"
  end
end

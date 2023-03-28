# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.15513"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.15513/kopia-20230328.0.15513-macOS-x64.tar.gz"
    sha256 "dc218f439f470c9548d53a66d5d07c97d00825f6b9026a8736fccc2a1fcff929"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.15513/kopia-20230328.0.15513-macOS-arm64.tar.gz"
    sha256 "0b3c718d6e2404a6937343de64067cbce492239e3a4aa573b8ec37d2e17bafd7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.15513/kopia-20230328.0.15513-linux-x64.tar.gz"
    sha256 "2ffb2bb55499e88e831620d41a16147602b644ab48b81003e523fdaa0b2f6496"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.15513/kopia-20230328.0.15513-linux-arm.tar.gz"
    sha256 "f7fdeca6b1301ddb633e7d91f0d30d682a3cdd078116c2c8e784c191020b7d32"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.15513/kopia-20230328.0.15513-linux-arm64.tar.gz"
    sha256 "d91993c0f2159c13dd090ffd664e1290d6e926a8df7f147b048ba19dbbd38349"
  end

  def install
    bin.install "kopia"
  end
end

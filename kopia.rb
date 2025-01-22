# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250121.0.180603"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.180603/kopia-20250121.0.180603-macOS-x64.tar.gz"
    sha256 "9f1211f96f114a03d82dab228571fd84e21a4e7e5b9dee833c49cd4df0abf73e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.180603/kopia-20250121.0.180603-macOS-arm64.tar.gz"
    sha256 "6dd7c41917dbd793ec27528c68aa4e4c9b2be86c00604a714fbd3b5b48034f1e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.180603/kopia-20250121.0.180603-linux-x64.tar.gz"
    sha256 "4db4a31aaad37f3fd50f8379e956eed6c601929f496d9973ede404fad7cfe874"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.180603/kopia-20250121.0.180603-linux-arm.tar.gz"
    sha256 "f102d03d819c02844497cde223185cfee2758c63aaa0986cbdc9d87481b405a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250121.0.180603/kopia-20250121.0.180603-linux-arm64.tar.gz"
    sha256 "7faa5aec618b88535232f8fc6b0b217850c65c28ffbd48d8130c4b4809c7d320"
  end

  def install
    bin.install "kopia"
  end
end

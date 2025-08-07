# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250807.0.225722"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250807.0.225722/kopia-20250807.0.225722-macOS-x64.tar.gz"
    sha256 "d7993fa9592bf1e7cf7ef7f6f07c16014984f09995a46e3e3accd045dd605875"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250807.0.225722/kopia-20250807.0.225722-macOS-arm64.tar.gz"
    sha256 "3bed42acabb970f261ef3000146b41a4cc1ab62b21d13815bafa39281dd55c3c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250807.0.225722/kopia-20250807.0.225722-linux-x64.tar.gz"
    sha256 "6e8c08987f9ac0db8993876228b5ce00b6b448cc4af5ca1eb9b3f147c7b6a836"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250807.0.225722/kopia-20250807.0.225722-linux-arm.tar.gz"
    sha256 "9c043ba671f1f3c00bf54101b7e5e5ee7e501e4aa7c7c31f1cd21cb7cf3811a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250807.0.225722/kopia-20250807.0.225722-linux-arm64.tar.gz"
    sha256 "dbb8a6fb373e1e70e037f84a802675248333856216d99d2554094df9b2aea493"
  end

  def install
    bin.install "kopia"
  end
end

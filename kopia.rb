# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250506.0.40429"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250506.0.40429/kopia-20250506.0.40429-macOS-x64.tar.gz"
    sha256 "762f2a61ee37d34a65085a76c62a121219955fcc4a10e2f249e489c979830393"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250506.0.40429/kopia-20250506.0.40429-macOS-arm64.tar.gz"
    sha256 "e04d8f1a1141e0fac18c0ae0ce7463a1b9a0222750a29869693044ae5e00ce50"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250506.0.40429/kopia-20250506.0.40429-linux-x64.tar.gz"
    sha256 "67c2d5c0898114dbea3c3de4b89aea6d58f40aff010c08180a88b6a81215e03d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250506.0.40429/kopia-20250506.0.40429-linux-arm.tar.gz"
    sha256 "1263389ffa079849d068efdf5892449148ebdf45b945204b942910f0080760f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250506.0.40429/kopia-20250506.0.40429-linux-arm64.tar.gz"
    sha256 "a371922f23b597a9bd91ee02d11d443ccf3de515f6263208d9a506e8f11269c7"
  end

  def install
    bin.install "kopia"
  end
end

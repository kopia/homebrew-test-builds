# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210919.0.185038"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.185038/kopia-20210919.0.185038-macOS-x64.tar.gz"
    sha256 "3857b2e34b9d58988cb2af92bf3ad044227783fb0b725b1e84adba0cd4396fbb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.185038/kopia-20210919.0.185038-macOS-arm64.tar.gz"
    sha256 "3dce82d8cb51a0b2c4b9eab5294360ee5ba35eae358ba0e6557f4be969c310db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.185038/kopia-20210919.0.185038-linux-x64.tar.gz"
    sha256 "f9f5729759664da6f6cbc0749edf070fdee0e7b0879aa085581c7be1f28c7033"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.185038/kopia-20210919.0.185038-linux-arm.tar.gz"
    sha256 "24b1bf3460c7d7a976d6d10d2714870d97e74312da301996a44e159da1462ca3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.185038/kopia-20210919.0.185038-linux-arm64.tar.gz"
    sha256 "91d61d0d02b9f08f0bc2e4a7bd73d5970ac9f7aed525ded297b0e3d5a2e723de"
  end

  def install
    bin.install "kopia"
  end
end

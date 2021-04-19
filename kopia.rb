# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210419.0.102518"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.102518/kopia-20210419.0.102518-macOS-x64.tar.gz"
    sha256 "fdec62e1a27a026a449c0a2260109e9f1e1da730401f6ed0d278be6c0dbcc37c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.102518/kopia-20210419.0.102518-macOS-arm64.tar.gz"
    sha256 "7e9a202a9f7c839a51117c2e193be50e7d0f1d95ae0a255a8964ec170e4fce61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.102518/kopia-20210419.0.102518-linux-x64.tar.gz"
    sha256 "124c47c646b08de536c8fc67797d23f8f4cc2224a9716ab2f6a8398ac44fdb3b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.102518/kopia-20210419.0.102518-linux-arm.tar.gz"
    sha256 "076a73291c4fd72c70f4b5b21086ccf4eea869d5bb6ae3d4efe62db0ee632e4d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210419.0.102518/kopia-20210419.0.102518-linux-arm64.tar.gz"
    sha256 "ab280a4375a7c47b48c5255f72bd7c43813d82f5a2ae576480c7455414f9470c"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230402.0.12416"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230402.0.12416/kopia-20230402.0.12416-macOS-x64.tar.gz"
    sha256 "03907c0ace3df77f0cd6a4f08378b4daa12c935235741e6b53a1536d3ccafe63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230402.0.12416/kopia-20230402.0.12416-macOS-arm64.tar.gz"
    sha256 "710b5fe119e20810572e3a517c22c8b0ddf324273197fe946e07da76d7f7453b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230402.0.12416/kopia-20230402.0.12416-linux-x64.tar.gz"
    sha256 "9a90fc1ed0b3f5738d99005bba30704c1d2fbfc03397441663eb8c53ff204db5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230402.0.12416/kopia-20230402.0.12416-linux-arm.tar.gz"
    sha256 "b0b73d759393cb7b2d38def24956a7f2a6f341e7828cccedcb80c90487af2374"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230402.0.12416/kopia-20230402.0.12416-linux-arm64.tar.gz"
    sha256 "f5419dd438ee8d1431cd1b81eaa140967c5f3f5c751d34811e68d19110d6975d"
  end

  def install
    bin.install "kopia"
  end
end

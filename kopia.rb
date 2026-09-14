# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260914.0.50518"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.50518/kopia-20260914.0.50518-macOS-x64.tar.gz"
    sha256 "8939e68a64d556abd4a76e7e713be1fec2074ee5650ffca9eead1143c536a8aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.50518/kopia-20260914.0.50518-macOS-arm64.tar.gz"
    sha256 "f039d24d6d88efc9609af99b056f11e5c9d0d539643e3d6f57bdb8407ea2ef59"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.50518/kopia-20260914.0.50518-linux-x64.tar.gz"
    sha256 "3a6ab141f76ce4f4cb11f8bd9f7eb10218fa7055828c6a3a1fff2d3b85e5cf31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.50518/kopia-20260914.0.50518-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.50518/kopia-20260914.0.50518-linux-arm64.tar.gz"
    sha256 "62c7315dd989593eb540c90d0c37823c8e5ac6df4a471f69c8df2770b003519f"
  end

  def install
    bin.install "kopia"
  end
end

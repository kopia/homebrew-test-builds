# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250806.0.235127"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250806.0.235127/kopia-20250806.0.235127-macOS-x64.tar.gz"
    sha256 "7e77110777458336ad8a62e8a94df5075451ba89af34693d5db8c13a6d5aa84f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250806.0.235127/kopia-20250806.0.235127-macOS-arm64.tar.gz"
    sha256 "fe9e70c2d2b14051710a95aea86979d3845ef202d25fd36f626a0ed98644938d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250806.0.235127/kopia-20250806.0.235127-linux-x64.tar.gz"
    sha256 "c761b4b42c4e9d56de2b3251bee8bbed44c24efebc400e35aae15eed40bb4187"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250806.0.235127/kopia-20250806.0.235127-linux-arm.tar.gz"
    sha256 "da871347311db62ba00ab5ed50ad362c6b746aa44edada10919f5ba8d567f379"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250806.0.235127/kopia-20250806.0.235127-linux-arm64.tar.gz"
    sha256 "3f8a1c98b995531ed7d400dd528a94dcd13a2e9e38833d577cd54b61e2959254"
  end

  def install
    bin.install "kopia"
  end
end

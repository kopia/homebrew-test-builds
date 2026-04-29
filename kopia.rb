# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260429.0.45932"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.45932/kopia-20260429.0.45932-macOS-x64.tar.gz"
    sha256 "463e8349e377b0e2eec239637a71102ed2393c720a2ad42b277016feae99adb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.45932/kopia-20260429.0.45932-macOS-arm64.tar.gz"
    sha256 "fa1015af4895230e8a63093f8f7abd7ba3ffcb805fbbf256b4bd9e07f120dc42"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.45932/kopia-20260429.0.45932-linux-x64.tar.gz"
    sha256 "b2f4b470f01424ff99d3a0bc62bf1e0159f663c4e31f5619c9ba9235aa460235"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.45932/kopia-20260429.0.45932-linux-arm.tar.gz"
    sha256 "2e11974508f4524a4889f49a8b0e13a1dcbdd55e7b2b4629eee52eac58f30f4c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260429.0.45932/kopia-20260429.0.45932-linux-arm64.tar.gz"
    sha256 "2d394cb166a9504cc9410d391bebba51e47f4805e8b53842e8c817d1a24a3bb7"
  end

  def install
    bin.install "kopia"
  end
end

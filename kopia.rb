# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240501.0.80122"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.80122/kopia-20240501.0.80122-macOS-x64.tar.gz"
    sha256 "ca68dbcb8d70565c6fc69d189fec0620a5e6c2c95071f95b0d29a0eeb5c5e191"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.80122/kopia-20240501.0.80122-macOS-arm64.tar.gz"
    sha256 "164aeeb3c7250976aa06eaf749774e6eb86b4c65cbf55832aa337d7e46de255a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.80122/kopia-20240501.0.80122-linux-x64.tar.gz"
    sha256 "dbb3b43371a3afec92ce3d1062de7c9029e2a8f6e86c3228f2787096659054cb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.80122/kopia-20240501.0.80122-linux-arm.tar.gz"
    sha256 "82765be6b7b94f5a4736527930f3586cdc8cef4c596cebb70546f2d2f257bce0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.80122/kopia-20240501.0.80122-linux-arm64.tar.gz"
    sha256 "5181174c0cd1b23ab0b523205fe990c936663d6ecc7adf4317a9c02bba758a31"
  end

  def install
    bin.install "kopia"
  end
end

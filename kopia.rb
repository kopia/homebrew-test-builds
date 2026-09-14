# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260914.0.32144"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.32144/kopia-20260914.0.32144-macOS-x64.tar.gz"
    sha256 "031b8c4700069b9442bb4ccacbb9add25a5263403b96f5ab3c3ddf53eaa30777"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.32144/kopia-20260914.0.32144-macOS-arm64.tar.gz"
    sha256 "37f8c953fa20309ab3a8798e3cbd608a4bea1da73285f42d35e760d093505e35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.32144/kopia-20260914.0.32144-linux-x64.tar.gz"
    sha256 "69fb8d78c2e446a0fdb079c40928152e5abb4570c5f42b8d3b94890505d2b4b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.32144/kopia-20260914.0.32144-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260914.0.32144/kopia-20260914.0.32144-linux-arm64.tar.gz"
    sha256 "86926186faef94bad0017f0984b69d10e0948a58d07a4806eeb460daa820773d"
  end

  def install
    bin.install "kopia"
  end
end

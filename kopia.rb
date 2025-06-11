# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250611.0.172841"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.172841/kopia-20250611.0.172841-macOS-x64.tar.gz"
    sha256 "78d3895ed9b49d500805342e9fd99f83955c87034f5a37f6b4f43839a1ed43b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.172841/kopia-20250611.0.172841-macOS-arm64.tar.gz"
    sha256 "813d80bf17c295f26b3820fe8748215dfc26653fa3d144ec51b98c0c38a04c70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.172841/kopia-20250611.0.172841-linux-x64.tar.gz"
    sha256 "0e4aee91d5aa846c585b34fd442ab8304bc9c1c0ba949a9340e1d4b3c3f4a83c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.172841/kopia-20250611.0.172841-linux-arm.tar.gz"
    sha256 "d39211d9ab42c3ca35c13655788fbe4006caf44e3a44041aac6c554cda260770"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250611.0.172841/kopia-20250611.0.172841-linux-arm64.tar.gz"
    sha256 "3d6f71aa928a5796c86fa976b7de214c68d84662858a99488eb160b1580a268b"
  end

  def install
    bin.install "kopia"
  end
end

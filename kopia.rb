# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251116.0.63645"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.63645/kopia-20251116.0.63645-macOS-x64.tar.gz"
    sha256 "50902e253b52e799478d2fe41a2f4d8a89c3d76d323b45dd8382d78eeb127d4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.63645/kopia-20251116.0.63645-macOS-arm64.tar.gz"
    sha256 "a9225ac6bc1f67bacd3e85090c89ae01f3e586cbf9d533631f87a0645e98348e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.63645/kopia-20251116.0.63645-linux-x64.tar.gz"
    sha256 "70a61fde9feae64236c40f604355336eca682f5fdeb1b9ea432a5dd41679bcb5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.63645/kopia-20251116.0.63645-linux-arm.tar.gz"
    sha256 "2b862311cf15761cad1d22d9c1a78d1c31ebb87df95d1facf16adba5374146b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.63645/kopia-20251116.0.63645-linux-arm64.tar.gz"
    sha256 "6a7cf17625fcdd5437c5729b369358206c7b6cad188216171cca26f68a437eae"
  end

  def install
    bin.install "kopia"
  end
end

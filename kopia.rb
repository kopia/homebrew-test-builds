# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250417.0.62501"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.62501/kopia-20250417.0.62501-macOS-x64.tar.gz"
    sha256 "58e94161bb330c60a080740b966902102ef91852d460a73fadd614b5a51cc2c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.62501/kopia-20250417.0.62501-macOS-arm64.tar.gz"
    sha256 "2eb3d3492d7f8870ac2c2811278f5bbd82e22847e9b99f78ef2a0146e7b783c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.62501/kopia-20250417.0.62501-linux-x64.tar.gz"
    sha256 "20fb5731e30ec3fe2f3f424d35d482bb57296b4de3537dc7dd00c73f2d875edf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.62501/kopia-20250417.0.62501-linux-arm.tar.gz"
    sha256 "fc37ac71cf3328aa5214cf3235993cc899c7526b9f504101c614fd6847d9458b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250417.0.62501/kopia-20250417.0.62501-linux-arm64.tar.gz"
    sha256 "9838dfc281254790604928b0bcf821c4324895c5817b2663ecee4b5f8cdd2dc6"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230420.0.74015"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230420.0.74015/kopia-20230420.0.74015-macOS-x64.tar.gz"
    sha256 "cb1b11729ce2410e5db7d4c78b758287a9238d51d1ce4cdefe859d0b38275158"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230420.0.74015/kopia-20230420.0.74015-macOS-arm64.tar.gz"
    sha256 "cef6929d8d22b43fcfb2ea8145c194c22b96c38674310ed0b2c905c3f16626da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230420.0.74015/kopia-20230420.0.74015-linux-x64.tar.gz"
    sha256 "b5561a156a96c02b844ffe955324417f16f8c8d5336c0c2f01fad6b90165796d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230420.0.74015/kopia-20230420.0.74015-linux-arm.tar.gz"
    sha256 "731778797fce3dee643da290d65133c50fbd1ea95fd47aeafcbf1261c1c9a11a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230420.0.74015/kopia-20230420.0.74015-linux-arm64.tar.gz"
    sha256 "9d051b0da1e558fb1dc0315a51e1872ea51a8fda9e52b9bfeabc1cc398051cf0"
  end

  def install
    bin.install "kopia"
  end
end

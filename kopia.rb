# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250518.0.15350"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.15350/kopia-20250518.0.15350-macOS-x64.tar.gz"
    sha256 "9de16b0a2f6e6bc479a2abb1ebaccd011eccc70c11316612f0784f3d613648f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.15350/kopia-20250518.0.15350-macOS-arm64.tar.gz"
    sha256 "7c641b5f0a001167f6a48cc6fff3de499422dd760b127c33f0534ca8e57856e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.15350/kopia-20250518.0.15350-linux-x64.tar.gz"
    sha256 "5a3a66c2b7c8568db83d156a1265837743e11259c2de76b249a5b2c24b7f18d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.15350/kopia-20250518.0.15350-linux-arm.tar.gz"
    sha256 "86586687fc785c3a74dc4e61ed1788b814df3c574d8a01d47078a2884db72797"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250518.0.15350/kopia-20250518.0.15350-linux-arm64.tar.gz"
    sha256 "06ad2637f133ff5247fb7d160d72f0e6644da096bc1d2f61b56465ea353d2cf9"
  end

  def install
    bin.install "kopia"
  end
end

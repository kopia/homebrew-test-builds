# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220712.0.130053"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.130053/kopia-20220712.0.130053-macOS-x64.tar.gz"
    sha256 "7d552cbf2f282029a200dac03d346fbc74aa1a86ba5e8f97693196f38c8e0d04"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.130053/kopia-20220712.0.130053-macOS-arm64.tar.gz"
    sha256 "db0df25d854e4a41b63eb00fac421621b03b524398f37aef4ae3d6871da7e95c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.130053/kopia-20220712.0.130053-linux-x64.tar.gz"
    sha256 "30a4652868a2114ccac90c4d0bdabda9be3f25f4e17a444e0d5aed2b07db6c5e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.130053/kopia-20220712.0.130053-linux-arm.tar.gz"
    sha256 "d34773a082ac8502c49002d3b646660f5db410fdfbff7db0a018731d35da2472"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220712.0.130053/kopia-20220712.0.130053-linux-arm64.tar.gz"
    sha256 "99c013bfb900f8da22b1c91190232938c03457272e8397ae71f9662c0782208e"
  end

  def install
    bin.install "kopia"
  end
end

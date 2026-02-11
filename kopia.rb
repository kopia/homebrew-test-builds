# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260211.0.50748"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.50748/kopia-20260211.0.50748-macOS-x64.tar.gz"
    sha256 "7d3fdecce68e34dcdab512e6d257de17f69d616d48ae534652a4cfe74be97d67"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.50748/kopia-20260211.0.50748-macOS-arm64.tar.gz"
    sha256 "94a0241362f293e4c9b003d54827ff558d6f05cb128254526a8f9e004fd0d93d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.50748/kopia-20260211.0.50748-linux-x64.tar.gz"
    sha256 "21bdc4365f78d8fbf30f76c8df7175f341f3c6b6e4fd909b875c5b52179e9eec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.50748/kopia-20260211.0.50748-linux-arm.tar.gz"
    sha256 "2525ce8612b08e5cd463832b1094964d0a8672b645621f3a3e005b06a7e70422"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260211.0.50748/kopia-20260211.0.50748-linux-arm64.tar.gz"
    sha256 "0ae244898b60f5be3a1cf5fbd58e424ec6c44e110e32ba5db0351751dc4e8922"
  end

  def install
    bin.install "kopia"
  end
end

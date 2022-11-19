# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221119.0.65203"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.65203/kopia-20221119.0.65203-macOS-x64.tar.gz"
    sha256 "74c46c8beb115a5d03bbac0a604470880307af0fe5b1680437c8be48f734d7c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.65203/kopia-20221119.0.65203-macOS-arm64.tar.gz"
    sha256 "da2ef2d3c8479f57bc4abeabfae39b18dd053d2ebd228fd627176cfa4088315c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.65203/kopia-20221119.0.65203-linux-x64.tar.gz"
    sha256 "da56296561ce2bd3bb39070d1696b5aed30fb9c628266d36e84bc852daa6ac55"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.65203/kopia-20221119.0.65203-linux-arm.tar.gz"
    sha256 "e25a596e3bb8a6a207c13cd156d6211cb8abeeea1d10b308f6e1795ccd3d0881"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.65203/kopia-20221119.0.65203-linux-arm64.tar.gz"
    sha256 "dec4541d3020b16e5fabdfccaed3068bfbf1a4d26c44cde865898b77225e29aa"
  end

  def install
    bin.install "kopia"
  end
end

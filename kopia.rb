# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240930.0.190208"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.190208/kopia-20240930.0.190208-macOS-x64.tar.gz"
    sha256 "672cefbab0cbadc0fa129e355ee8acfd69d522bc9a4eb9a728f88fef1de1f2da"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.190208/kopia-20240930.0.190208-macOS-arm64.tar.gz"
    sha256 "8e8d804abd2d141503594c563dabc9e71376dfbb9dd99215d8098aed6df5ac7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.190208/kopia-20240930.0.190208-linux-x64.tar.gz"
    sha256 "21683f1e50bb7fef5f1ddc5354ccf001d3fb5dc5a635ff7a4008fa8b1f6ea188"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.190208/kopia-20240930.0.190208-linux-arm.tar.gz"
    sha256 "4dbef0c0ae71d29141bc9390f081681c6d93014d94ab0efae4084729505fdca5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.190208/kopia-20240930.0.190208-linux-arm64.tar.gz"
    sha256 "c2b1eae265d1d38595d2e677dc5a3f2a199bd9c82dbcf67cc5f717cdf645385b"
  end

  def install
    bin.install "kopia"
  end
end

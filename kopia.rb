# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210321.0.221320"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221320/kopia-20210321.0.221320-macOS-x64.tar.gz"
    sha256 "6353d9a4fe35be407a5a4cd2449c629dd88472c5d783c01222bd28b4287b5961"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221320/kopia-20210321.0.221320-macOS-arm64.tar.gz"
    sha256 "84c04ea604f1a624beb6494863f2361e52f1579a3c1ce3c91e38fb0524d3bf31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221320/kopia-20210321.0.221320-linux-x64.tar.gz"
    sha256 "7beba8f1ab9857828fcde9a7b1c6f5a8f7d5b715258c7b5913261dec30932388"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221320/kopia-20210321.0.221320-linux-arm.tar.gz"
    sha256 "601f14a0f5467ec43540ed18aad7a7818b2a3ac962e59adbb243d95e92f28056"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.221320/kopia-20210321.0.221320-linux-arm64.tar.gz"
    sha256 "dbbcff0afcfe5b4bcf23a5ad571a7a16c19897aac5a6f04d547d28a03f67e491"
  end

  def install
    bin.install "kopia"
  end
end

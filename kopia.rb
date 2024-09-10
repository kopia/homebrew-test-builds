# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240910.0.162109"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240910.0.162109/kopia-20240910.0.162109-macOS-x64.tar.gz"
    sha256 "abb9ae50da0cff70604a819c677cbce77188df11a53617eb22d713f3360e6b3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240910.0.162109/kopia-20240910.0.162109-macOS-arm64.tar.gz"
    sha256 "b9f95ee9cbc3dcc49114fe87607e3d9c2987cdc80d3cc3f53fc34e8ebcc52eda"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240910.0.162109/kopia-20240910.0.162109-linux-x64.tar.gz"
    sha256 "f2c1f174716c8bc0becd646645b8c07799de4e91513348e1a6634ba81842573e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240910.0.162109/kopia-20240910.0.162109-linux-arm.tar.gz"
    sha256 "7df32567cc8cbc6f8535155d56b910b365c6bdfe38cbb578f22313425ccd3eb1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240910.0.162109/kopia-20240910.0.162109-linux-arm64.tar.gz"
    sha256 "a84491ba10c8b12676363fd0c853143283eb68ee6052e5c814cc551d43cec429"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260106.0.4250"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260106.0.4250/kopia-20260106.0.4250-macOS-x64.tar.gz"
    sha256 "ff712053b6d6bceb242500b78a8d622e7d49ccdc43aa6cc592f6206c79dcccc2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260106.0.4250/kopia-20260106.0.4250-macOS-arm64.tar.gz"
    sha256 "01b5d3fa793c9337275d6bc4d940abd0c103cd29b5e505c20ee86abe36025832"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260106.0.4250/kopia-20260106.0.4250-linux-x64.tar.gz"
    sha256 "379712e37f3b9ddff0bb2a77009224561d37ac712124e4051cf8d470d59e4806"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260106.0.4250/kopia-20260106.0.4250-linux-arm.tar.gz"
    sha256 "1c953244813ac31872a8007f034a5cf69b9273318cbab8ea5b9e8f2217cbdc92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260106.0.4250/kopia-20260106.0.4250-linux-arm64.tar.gz"
    sha256 "f04d06587333ac767ef3fd0b4f75c2932b8c3c4baf3255fef0d786e4c1c14d3a"
  end

  def install
    bin.install "kopia"
  end
end

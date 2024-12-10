# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241210.0.20112"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.20112/kopia-20241210.0.20112-macOS-x64.tar.gz"
    sha256 "dfb06889fac6237cf6be4bde03736a0a5a41eda253c8c6dc7259eb328b79bb89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.20112/kopia-20241210.0.20112-macOS-arm64.tar.gz"
    sha256 "8510e536d2e3ab14bdfecaaa8dfa89d4b99562326b934022e289861d2a0f4ddc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.20112/kopia-20241210.0.20112-linux-x64.tar.gz"
    sha256 "1068ae3011bb59f7b5eb70be8b6b9ddc140f4111867bc704843408cbc0d7c896"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.20112/kopia-20241210.0.20112-linux-arm.tar.gz"
    sha256 "4c01b4d2d025c2716596ffe81d7dcf459c668ec088e3a1389fd70f67f76f9ef5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241210.0.20112/kopia-20241210.0.20112-linux-arm64.tar.gz"
    sha256 "6e0624944f4167ae91bff3cd17138b9c6d39b23d5dfefc05b2b8119084845f42"
  end

  def install
    bin.install "kopia"
  end
end

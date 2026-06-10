# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260610.0.31847"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.31847/kopia-20260610.0.31847-macOS-x64.tar.gz"
    sha256 "71c620c8f88501d18c26fb1b5077958a1c81ffe230749f3fefd7a4de730304ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.31847/kopia-20260610.0.31847-macOS-arm64.tar.gz"
    sha256 "9b72cd1e1d68daeb84e2d22090af3176b7520fe4f3655a1a60873d4258c04724"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.31847/kopia-20260610.0.31847-linux-x64.tar.gz"
    sha256 "b77be98d09c5476e07cdea3f754c77a24f4473be37339850ac6a2e549ed467bd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.31847/kopia-20260610.0.31847-linux-arm.tar.gz"
    sha256 "d5ff601c1b2ec24be1b885eb0e6ac6b38acf410de7ea5ad0b34b114afd0ef3ad"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260610.0.31847/kopia-20260610.0.31847-linux-arm64.tar.gz"
    sha256 "f0c18348936ce5875fa09fa9a346e3688ccb8b386c2503cac8dbdc1f836c2bc2"
  end

  def install
    bin.install "kopia"
  end
end

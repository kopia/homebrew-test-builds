# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220526.0.55136"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.55136/kopia-20220526.0.55136-macOS-x64.tar.gz"
    sha256 "fc81975874b376154ce11508344fd9d96c0f08b63acf459b2233030cf8ba88c1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.55136/kopia-20220526.0.55136-macOS-arm64.tar.gz"
    sha256 "dcab7762a176ba5f4e00e6ae569ba4655f861eacef06b146d4154299e4c3c850"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.55136/kopia-20220526.0.55136-linux-x64.tar.gz"
    sha256 "739522c8be2d9acf230e7839b116c99087b1e3d818e52fc468f947b57ea9c341"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.55136/kopia-20220526.0.55136-linux-arm.tar.gz"
    sha256 "efc8da5b0dd3e92e077de4886629a1d0a065f0a19849357373ae00396a63993c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.55136/kopia-20220526.0.55136-linux-arm64.tar.gz"
    sha256 "88d8ccfc307c8d3ec90860fa36be861b57f42e5f6f2a6a6490f1d6bbbd1db8a8"
  end

  def install
    bin.install "kopia"
  end
end

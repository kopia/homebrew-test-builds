# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.154753"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.154753/kopia-20220910.0.154753-macOS-x64.tar.gz"
    sha256 "374b01577c43bd44295d9332d8b2bf3a2a4e7ad4774d69c03b6e67b97549057d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.154753/kopia-20220910.0.154753-macOS-arm64.tar.gz"
    sha256 "6a7f639eea66281ea849c1edfebb8a8ceaec799f56662ecf2c06b61dd17b95b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.154753/kopia-20220910.0.154753-linux-x64.tar.gz"
    sha256 "fc08f83e00ff8062d7ac23e4a74c1adf5c0c4b68815eda2d3555062503cc668c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.154753/kopia-20220910.0.154753-linux-arm.tar.gz"
    sha256 "146740b65454d4695dfdf7adcefa363bd59a6babc8ad41014d6b7a77ac02ea5d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.154753/kopia-20220910.0.154753-linux-arm64.tar.gz"
    sha256 "50f360dd7fd6ab8b90757e2104c4fb0889fac2a5c1dbbf3448ea7f6e396146f7"
  end

  def install
    bin.install "kopia"
  end
end

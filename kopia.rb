# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261110.0.192424"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.192424/kopia-20261110.0.192424-macOS-x64.tar.gz"
    sha256 "436f3020e5c535a3308e7b9008e25263106117c674c1a3344f449702520a4f52"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.192424/kopia-20261110.0.192424-macOS-arm64.tar.gz"
    sha256 "a5b399f8ed2cfa79c8967feec02c6b19f16c0d2242b2bc09d4289e01d3d557e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.192424/kopia-20261110.0.192424-linux-x64.tar.gz"
    sha256 "e3f3e978457f60fee3df622f6183a8add0a52a0cfdc6b7f683370c00efceabb6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.192424/kopia-20261110.0.192424-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261110.0.192424/kopia-20261110.0.192424-linux-arm64.tar.gz"
    sha256 "75ce39b16f7f9c9f9270dff208f960896df1574ba3523bba1ab594b649f3a1d0"
  end

  def install
    bin.install "kopia"
  end
end

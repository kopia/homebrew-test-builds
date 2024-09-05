# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240905.0.151218"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.151218/kopia-20240905.0.151218-macOS-x64.tar.gz"
    sha256 "68779ed9de2d9524c9f34cad0a327b1411cdf720919e9482cc5af5b8e7d884e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.151218/kopia-20240905.0.151218-macOS-arm64.tar.gz"
    sha256 "b030bc20c2743736ecaee0ad8b6516fc02780f719ec566f4869685d8d8f9f9f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.151218/kopia-20240905.0.151218-linux-x64.tar.gz"
    sha256 "81e7baf562041fe55eda990fef5283ba28ca524ba57ae737114df32b19d038fc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.151218/kopia-20240905.0.151218-linux-arm.tar.gz"
    sha256 "985aa770e11efa404b468513d936259eabde7d6e4e6d08a2617fabfcbdea5871"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240905.0.151218/kopia-20240905.0.151218-linux-arm64.tar.gz"
    sha256 "667effc6b5a33ed71a4eb8a1ad9cda94d52d75464399a0d1e5074d8f3f4a82c1"
  end

  def install
    bin.install "kopia"
  end
end

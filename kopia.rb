# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220101.0.150645"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.150645/kopia-20220101.0.150645-macOS-x64.tar.gz"
    sha256 "57e5a5c87b7adc0901db5b834656b0cd6e3f44328120c8661f0252d24ae40f94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.150645/kopia-20220101.0.150645-macOS-arm64.tar.gz"
    sha256 "a49ad9ddfd3df4729e6325885794a9e682f15fa1823609945fe50211ee8b9cfb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.150645/kopia-20220101.0.150645-linux-x64.tar.gz"
    sha256 "085fad1411798237be8b9145802008f528b186f3e4cdf880b1c9904aff35fe33"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.150645/kopia-20220101.0.150645-linux-arm.tar.gz"
    sha256 "d03d953d9a018b4321554aed40dfe21718fb33a99e87a382222f725976164b74"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220101.0.150645/kopia-20220101.0.150645-linux-arm64.tar.gz"
    sha256 "20973dcac1596dad21bb6a7b27f233d365803b8cffb4012cc50df2344c1870d8"
  end

  def install
    bin.install "kopia"
  end
end

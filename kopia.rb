# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240501.0.145001"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.145001/kopia-20240501.0.145001-macOS-x64.tar.gz"
    sha256 "2b5d409983092a5e565b333bffb0e2802d2d1d7e4aedd9f090b5d7ac8923ee5d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.145001/kopia-20240501.0.145001-macOS-arm64.tar.gz"
    sha256 "9ffc7839f330c602abae28fb1704ce099fe16e625a31dc2f12fa35b83f62c795"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.145001/kopia-20240501.0.145001-linux-x64.tar.gz"
    sha256 "ffacd9a6af76224ce5cd2280761462bf7ef22e19e30e6f514e843e559f08447e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.145001/kopia-20240501.0.145001-linux-arm.tar.gz"
    sha256 "0fe446616bb4f16e33fd0ce750057e19b8c5ea6774797ac7e7d46b9ba3be8e27"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.145001/kopia-20240501.0.145001-linux-arm64.tar.gz"
    sha256 "9720c214eded7852e5a123123317ca6532bc631e32dbed17332346089fcbefd2"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230721.0.170820"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.170820/kopia-20230721.0.170820-macOS-x64.tar.gz"
    sha256 "8b9b6fc3383055f6833e7ed173701a996206101897f0481b2abed8dadf820396"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.170820/kopia-20230721.0.170820-macOS-arm64.tar.gz"
    sha256 "dcb11b2ba69404265e1f3e114df6028f7e880288f284c32d2b485fcf53fe5f9c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.170820/kopia-20230721.0.170820-linux-x64.tar.gz"
    sha256 "8b4065cde2140adf93c7f2003294d4e09f653c9e1dc4b1f02e293af134dfe822"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.170820/kopia-20230721.0.170820-linux-arm.tar.gz"
    sha256 "eaafe15e90de750fcd5470fafdd2dc6728ab3fab1a158d4e2a06cca88867692d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.170820/kopia-20230721.0.170820-linux-arm64.tar.gz"
    sha256 "b7071de826d8e9139f8869befdc59502444e01a8b71ab1e7e9d915755d3baf7d"
  end

  def install
    bin.install "kopia"
  end
end

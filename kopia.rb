# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250401.0.125402"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.125402/kopia-20250401.0.125402-macOS-x64.tar.gz"
    sha256 "4986e59dab5f578f887a3cd9f822d6e0e7c850069068475d89ea3e8fca4d2dbb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.125402/kopia-20250401.0.125402-macOS-arm64.tar.gz"
    sha256 "3996e0170911ef22b9a3013788414c6ddf80841e4493625c15af0f7bebd99aa3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.125402/kopia-20250401.0.125402-linux-x64.tar.gz"
    sha256 "e18e0696985623c4afde25ae97fa90d5771f1c09038bb5456f0b1bb39fab2ae3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.125402/kopia-20250401.0.125402-linux-arm.tar.gz"
    sha256 "e6824c02f06757583d126d0189851347c5a72100f56e64df976457983cb795bc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250401.0.125402/kopia-20250401.0.125402-linux-arm64.tar.gz"
    sha256 "13e03c4459178ef1b2a57311c25d5f6044e32900b5d3b0373f05f533971a4aba"
  end

  def install
    bin.install "kopia"
  end
end

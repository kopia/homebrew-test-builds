# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260604.0.62817"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.62817/kopia-20260604.0.62817-macOS-x64.tar.gz"
    sha256 "0ae8eb3095db9c0620a6c5415a0533cdde63eb5034acd3152b6d56b7fa1154a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.62817/kopia-20260604.0.62817-macOS-arm64.tar.gz"
    sha256 "d9dbccacb728efd39822a7aa0050fb994bdaa1991feafc34cc2bfba22ea7762c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.62817/kopia-20260604.0.62817-linux-x64.tar.gz"
    sha256 "426b5f9b22a6f4219c1a2ea6963ce68e0aa441f977852bca42df759710e68000"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.62817/kopia-20260604.0.62817-linux-arm.tar.gz"
    sha256 "560646f9e02787031f2dd7e395753bc1073f2d5bf4058af912e87db51337b724"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260604.0.62817/kopia-20260604.0.62817-linux-arm64.tar.gz"
    sha256 "8b3d6e3815501c56584338551eb07c2562600386d3a2575f4d3b70a19c4e482c"
  end

  def install
    bin.install "kopia"
  end
end

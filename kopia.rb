# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250607.0.184901"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250607.0.184901/kopia-20250607.0.184901-macOS-x64.tar.gz"
    sha256 "1d7a653450d7de3c90bc85413dc1a21985a162ef8e6a3506bbf3a174ad969fe1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250607.0.184901/kopia-20250607.0.184901-macOS-arm64.tar.gz"
    sha256 "5f61c3801988bb48a5178ac86ee529ea05827e75d868b17fa8faa63413509936"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250607.0.184901/kopia-20250607.0.184901-linux-x64.tar.gz"
    sha256 "04d5e2c441db4042e1d9e104e58b60910b1657f3653d2ad6112e6202da318c83"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250607.0.184901/kopia-20250607.0.184901-linux-arm.tar.gz"
    sha256 "8bb8edd7240355ec2502e4e7a2fa175b49a799008f55165a8d19771f002da034"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250607.0.184901/kopia-20250607.0.184901-linux-arm64.tar.gz"
    sha256 "5d3a3b619e05eb197ed2aff7c30c696218ca2c8c962dded29e97a1d39ead521c"
  end

  def install
    bin.install "kopia"
  end
end

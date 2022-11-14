# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221111.0.233123"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221111.0.233123/kopia-20221111.0.233123-macOS-x64.tar.gz"
    sha256 "0d833549636a72d553b2b2f7f1218600ba7f3ae681f7600f31a0c3f3796236ea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221111.0.233123/kopia-20221111.0.233123-macOS-arm64.tar.gz"
    sha256 "9ff91059d052ae393980569ce1117f3d0915ea65a5771d42e50bb4d5f5901d4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221111.0.233123/kopia-20221111.0.233123-linux-x64.tar.gz"
    sha256 "f21a6cb65c32dbc0db96c10afaeaad72b44fa1db3d81fc2c8543543add91e8f1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221111.0.233123/kopia-20221111.0.233123-linux-arm.tar.gz"
    sha256 "53775bbf08a069926905340c11690ee9c5d72b237e572ef82c9ced6c2c7fdeea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221111.0.233123/kopia-20221111.0.233123-linux-arm64.tar.gz"
    sha256 "7999c1342e26a5ebcccdb8fd19d765b11409392bc72a235d81991447eac5e629"
  end

  def install
    bin.install "kopia"
  end
end

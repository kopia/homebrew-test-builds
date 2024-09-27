# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240926.0.215107"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.215107/kopia-20240926.0.215107-macOS-x64.tar.gz"
    sha256 "a6afb6c954ce85eb9ae8d9744034e045bd69bc2b1d7d24c65344071ca7aa32fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.215107/kopia-20240926.0.215107-macOS-arm64.tar.gz"
    sha256 "70d02dd2a0e3a92547153735f406087a55f192085a10aabfaa2c8cb484a10326"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.215107/kopia-20240926.0.215107-linux-x64.tar.gz"
    sha256 "f4e0882dc9ef1500d0d39ccfacfa5831096146397cdffdac7a186b6140206fd2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.215107/kopia-20240926.0.215107-linux-arm.tar.gz"
    sha256 "92c2d14c6c571bd514c3a8cd4751db5967d01c5751a8453d7b6e016c0402fde3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.215107/kopia-20240926.0.215107-linux-arm64.tar.gz"
    sha256 "c4466779a062eab543b61d8cf7e53830d24408b023ae7f06dfd406bf1746b89b"
  end

  def install
    bin.install "kopia"
  end
end

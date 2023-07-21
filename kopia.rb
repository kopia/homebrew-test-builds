# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230721.0.190542"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.190542/kopia-20230721.0.190542-macOS-x64.tar.gz"
    sha256 "4f5d92e926b0c82879687b4c46e573955d75a8a7004e3665acaf4a1d2e7f2910"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.190542/kopia-20230721.0.190542-macOS-arm64.tar.gz"
    sha256 "3ea4392103b35b0a1f20ac93ebfd47497e36b90bf1355e7cf0fabd1049f41340"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.190542/kopia-20230721.0.190542-linux-x64.tar.gz"
    sha256 "059ddbdceb7befe36bc01db32f81cea35f15f63f252ee774b063137ee35415fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.190542/kopia-20230721.0.190542-linux-arm.tar.gz"
    sha256 "2f734ba0e6f76829e6a206acf850d7f63c1dadee2585d0177a6c1eb9ed4a3f4b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.190542/kopia-20230721.0.190542-linux-arm64.tar.gz"
    sha256 "1dcd3901f775ed8f4154a27f4951dfd3bebca87a3ddf0b083fc9279da94f545a"
  end

  def install
    bin.install "kopia"
  end
end

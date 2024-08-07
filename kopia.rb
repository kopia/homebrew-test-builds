# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240807.0.102948"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.102948/kopia-20240807.0.102948-macOS-x64.tar.gz"
    sha256 "cb6cde1c78c3271775b3aa9a6e6ae706135ad2d5d829aa32bc8915d50ae8d35a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.102948/kopia-20240807.0.102948-macOS-arm64.tar.gz"
    sha256 "8f12bfe6416b51563373f038ce782fe8d9a8c08eced475d7b22cb5e44c6e7e18"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.102948/kopia-20240807.0.102948-linux-x64.tar.gz"
    sha256 "3893a9fe9f45af06348e8d0f41a17afe2f6b8763613620df90e9071d29903985"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.102948/kopia-20240807.0.102948-linux-arm.tar.gz"
    sha256 "87267e5fd3dddebfcbc9b44c6493de209620bb77b5928c556d4af7629f734a32"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.102948/kopia-20240807.0.102948-linux-arm64.tar.gz"
    sha256 "59b502de6d718951d0df01447041279db9b439ff9f97b72ba04a3b3d96aa1711"
  end

  def install
    bin.install "kopia"
  end
end

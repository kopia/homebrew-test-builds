# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260219.0.63318"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.63318/kopia-20260219.0.63318-macOS-x64.tar.gz"
    sha256 "c3dbaf0c7029e865e33fc17adb5bad99c4778ab5900f529fa97ae279e36e543a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.63318/kopia-20260219.0.63318-macOS-arm64.tar.gz"
    sha256 "014f3ae5f327c0bb3877804c89525d21c0abe57d06b9dba4c28d6b45af9d83ce"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.63318/kopia-20260219.0.63318-linux-x64.tar.gz"
    sha256 "8250c97dee6598cca3dbe0748474f27579bd4e6b6bca7f2c61cebb7ee7e0c8a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.63318/kopia-20260219.0.63318-linux-arm.tar.gz"
    sha256 "2bb0a8885a613f7d86a5b8633c27c5309f21a41b7b2aae5544fa13dcf8d8e979"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.63318/kopia-20260219.0.63318-linux-arm64.tar.gz"
    sha256 "30d8531ef3f092f52b80bda131a1ea7b48ae57528b1db609e63b1d4b8c489036"
  end

  def install
    bin.install "kopia"
  end
end

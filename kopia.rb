# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261005.0.232010"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.232010/kopia-20261005.0.232010-macOS-x64.tar.gz"
    sha256 "a83a60f0012a2f545450e0b0edb1b75be82030ca35813d1bf7ddf0bcf8807272"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.232010/kopia-20261005.0.232010-macOS-arm64.tar.gz"
    sha256 "19cf13f7d70a330e3bfec2c358f054c28aa9c12fb120061af1fec483e979edab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.232010/kopia-20261005.0.232010-linux-x64.tar.gz"
    sha256 "a1facf663fe533ddd5210654441259c9afda26dcc4e96d27d37fe604bf6839ac"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.232010/kopia-20261005.0.232010-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261005.0.232010/kopia-20261005.0.232010-linux-arm64.tar.gz"
    sha256 "5ed24f9eac701924e071b199c0cecb6bfc63f81ed4ba484fc7abe9ad677df366"
  end

  def install
    bin.install "kopia"
  end
end

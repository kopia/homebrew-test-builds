# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240715.0.193525"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.193525/kopia-20240715.0.193525-macOS-x64.tar.gz"
    sha256 "3bd1cc984fc0186e374bd87ef6ea8b4e2ab966058fde63dda5fa6fbb1955ced9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.193525/kopia-20240715.0.193525-macOS-arm64.tar.gz"
    sha256 "3b0a54cf98ed3dd3c757d264c5ce8b0c0779d718b317ef1e154ab87d303eaeeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.193525/kopia-20240715.0.193525-linux-x64.tar.gz"
    sha256 "15d3a7693b9ed973e0dd4f38786ea8c9649bb65325b253ed20c9768af1e76a24"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.193525/kopia-20240715.0.193525-linux-arm.tar.gz"
    sha256 "02712c672da9000edb8456f2f10f5ef9b60a2cc088be02e9253a0c3802e16ce4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.193525/kopia-20240715.0.193525-linux-arm64.tar.gz"
    sha256 "932b901456ad6f6f3e63150367acdf0f710a78d3ac453b670ea7d59b648ff54b"
  end

  def install
    bin.install "kopia"
  end
end

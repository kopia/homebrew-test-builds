# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.202238"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202238/kopia-20211201.0.202238-macOS-x64.tar.gz"
    sha256 "67a46109ed7fc42eb2c0a7c9464ddcbb57b269754317fb6c21a8b87c8ef09c0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202238/kopia-20211201.0.202238-macOS-arm64.tar.gz"
    sha256 "cce74114eb2ef5c1350a6848e4b1cb8072e3b188fd8ccc496e48155055786542"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202238/kopia-20211201.0.202238-linux-x64.tar.gz"
    sha256 "0d3d0beb29882c3afc37be5e85443f8d28ecdad25950575c48425d6f632b92ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202238/kopia-20211201.0.202238-linux-arm.tar.gz"
    sha256 "e2a276ca5965d803f09d88ab22624285018ba75a77a13e9b1a81b73dfc8eeec7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.202238/kopia-20211201.0.202238-linux-arm64.tar.gz"
    sha256 "0bc35fc585536043dfc1219d29de8fde58d6ecd10f42646926036ed324956e62"
  end

  def install
    bin.install "kopia"
  end
end

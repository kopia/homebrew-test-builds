# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.75723"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75723/kopia-20211103.0.75723-macOS-x64.tar.gz"
    sha256 "823ab0c409faff92e311a9abba44b5c12cedf48a9fb6fe6b2379a4a5e3676bc2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75723/kopia-20211103.0.75723-macOS-arm64.tar.gz"
    sha256 "90b471d33563fdb28f9f0fc8d438830b2e786c6d1dff2e387264e6540a0edc2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75723/kopia-20211103.0.75723-linux-x64.tar.gz"
    sha256 "a4857dd0a3eb6d1dfc5420639897db3d9c7e43244a4c9d11643efef203c4a3b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75723/kopia-20211103.0.75723-linux-arm.tar.gz"
    sha256 "2c8fef407a72fb42c7fee7cb0ef8855561c01ac57382e7fbd3918d233e2a5cd2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75723/kopia-20211103.0.75723-linux-arm64.tar.gz"
    sha256 "d6ccbb6afbc9ac929543d047f3fab057a59073d0d56220be7b13d80db3206a7a"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241009.0.184309"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241009.0.184309/kopia-20241009.0.184309-macOS-x64.tar.gz"
    sha256 "8a0259d828f78dcd39299f71a065b4703cd0f3e0e2a2cff6d97f3d166eb97539"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241009.0.184309/kopia-20241009.0.184309-macOS-arm64.tar.gz"
    sha256 "cfc5f1967355c03bf058a8ada1052a19f23d3521240c0c5d4f2206bfd8ff9f39"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241009.0.184309/kopia-20241009.0.184309-linux-x64.tar.gz"
    sha256 "48ea76d7e80b486e33f482c07cc2f434b8521215cf76dde18e1b87c448545700"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241009.0.184309/kopia-20241009.0.184309-linux-arm.tar.gz"
    sha256 "adf91b3b652541e3d2997a6ac5df5cdfe89e28503074a4e7980b510efd5b0709"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241009.0.184309/kopia-20241009.0.184309-linux-arm64.tar.gz"
    sha256 "2cedc0a6639d3f93bfd63fd75dbf2133fbee43c2f950b30cadc66b87aaed3219"
  end

  def install
    bin.install "kopia"
  end
end

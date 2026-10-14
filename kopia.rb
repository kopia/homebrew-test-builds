# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261014.0.162948"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.162948/kopia-20261014.0.162948-macOS-x64.tar.gz"
    sha256 "6eeca8e4e348ae6cc3a284ce9e81696cae515dddb2c27b036f444b8af858a2ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.162948/kopia-20261014.0.162948-macOS-arm64.tar.gz"
    sha256 "d12c069e00a2cb2eceadd5831fe81c5ed6f82c694d5a3347eda6a61da0e6f88f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.162948/kopia-20261014.0.162948-linux-x64.tar.gz"
    sha256 "3404ffb68f073dbf44ed00cb0916bba8a8d450a1b3531e3a2c7b6c6dc8d6f9fa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.162948/kopia-20261014.0.162948-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.162948/kopia-20261014.0.162948-linux-arm64.tar.gz"
    sha256 "7ab508e706620764dca23116e6c8ac0e1dcc40f0572613d3147beda6efbdd644"
  end

  def install
    bin.install "kopia"
  end
end

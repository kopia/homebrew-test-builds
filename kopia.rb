# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250225.0.4938"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250225.0.4938/kopia-20250225.0.4938-macOS-x64.tar.gz"
    sha256 "8c26ca8603f8dc9030b8a7226702034da757bcba1bdddb703feab74e832554f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250225.0.4938/kopia-20250225.0.4938-macOS-arm64.tar.gz"
    sha256 "eeeb05ed770c46319d48f641fb0213cc1f21694d16a7850462dd036e7e56586f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250225.0.4938/kopia-20250225.0.4938-linux-x64.tar.gz"
    sha256 "a4211e56aee703180ffb207e3f51e119c860723a844131c7f87d08c6a46659f9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250225.0.4938/kopia-20250225.0.4938-linux-arm.tar.gz"
    sha256 "a1c2c9043e50f63e78d142ca2a50e507328f9e0873b523df23cfad4488b5b91a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250225.0.4938/kopia-20250225.0.4938-linux-arm64.tar.gz"
    sha256 "33c9c10c48c4ec6f4cd54839b713b71fac616a78aad3b645788316e1aef473f8"
  end

  def install
    bin.install "kopia"
  end
end

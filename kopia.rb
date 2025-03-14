# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250314.0.154831"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250314.0.154831/kopia-20250314.0.154831-macOS-x64.tar.gz"
    sha256 "a6969f1132fd74e12d4937de4e23e20dcb33f8303a01916f85944d86fa93c84a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250314.0.154831/kopia-20250314.0.154831-macOS-arm64.tar.gz"
    sha256 "63d298808c600059f13d557abc8aa619930707f967a854f866c38adf8d75a9df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250314.0.154831/kopia-20250314.0.154831-linux-x64.tar.gz"
    sha256 "272035868754188bf3c67fb395851f74f3cbb3505700e50e0bea879887074bea"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250314.0.154831/kopia-20250314.0.154831-linux-arm.tar.gz"
    sha256 "317a11330c38b2ffa43bad77f0262da0347eb2cf44b16352010a62e8eede7943"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250314.0.154831/kopia-20250314.0.154831-linux-arm64.tar.gz"
    sha256 "24b0826795ca7becc5838ac1ec3c31d4637248094d64d47f24d1b401768125e6"
  end

  def install
    bin.install "kopia"
  end
end

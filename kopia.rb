# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250909.0.173659"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.173659/kopia-20250909.0.173659-macOS-x64.tar.gz"
    sha256 "a7acdcf9697b5be92541cbd6e552b6fc2e4b683f0482fee79eb9a8f98e80165b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.173659/kopia-20250909.0.173659-macOS-arm64.tar.gz"
    sha256 "2670de0d44a8db053b54b35e5f41d2dbb13e2096cea2f53e15f84ecea8bd1002"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.173659/kopia-20250909.0.173659-linux-x64.tar.gz"
    sha256 "738fd733992ab183f4a2577647e49e2e80d63aae7730f0d762f4d593a35c4789"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.173659/kopia-20250909.0.173659-linux-arm.tar.gz"
    sha256 "519c7bc7f70e1f77f3f595bc4e28a1757b82e795c0ee5b0d9a2bd44c0eaf1398"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250909.0.173659/kopia-20250909.0.173659-linux-arm64.tar.gz"
    sha256 "ed48e0480727e5bc2e24e25c0b4a91b254e0895cc96e5dc48e8fb1b9b25b8cc2"
  end

  def install
    bin.install "kopia"
  end
end

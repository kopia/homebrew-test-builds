# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251118.0.4212"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.4212/kopia-20251118.0.4212-macOS-x64.tar.gz"
    sha256 "08fd2afd1c58c5862c1ffab29b850197ebf23f728082e47f6ab423dd654a8f63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.4212/kopia-20251118.0.4212-macOS-arm64.tar.gz"
    sha256 "0e77b60d277a7aa01a1a5822c69680257e862a20e64756a4e004ce7a9c47950c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.4212/kopia-20251118.0.4212-linux-x64.tar.gz"
    sha256 "33f565e2708c46ab5e80ec06b48dbf9d1befdab22b5956bf2a940a6fa759961f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.4212/kopia-20251118.0.4212-linux-arm.tar.gz"
    sha256 "b27820c4fc3d0d0a708939a239658dd56f8eb2387344e30079000d2ecb5f4de1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.4212/kopia-20251118.0.4212-linux-arm64.tar.gz"
    sha256 "e45a316f21ea7987e52cb1a4bd28507e954a7c68972aad3cfb521f77933cc508"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251126.0.174001"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.174001/kopia-20251126.0.174001-macOS-x64.tar.gz"
    sha256 "e8235575b3d87ba9162dd327b592171a52f8b8233f6e983a85cf3a2792f74500"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.174001/kopia-20251126.0.174001-macOS-arm64.tar.gz"
    sha256 "0c88212b99588e5e0229a403f6259eafefc0aa239e4d2a10b923a1943cfa46d4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.174001/kopia-20251126.0.174001-linux-x64.tar.gz"
    sha256 "fe5693057abf72928f02196376454403266eb08166748d79246174b7eef4bbb6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.174001/kopia-20251126.0.174001-linux-arm.tar.gz"
    sha256 "678ff3d63411f243e90908b0a1c7ad7b0d12d0c9192abdcef2e4cd5fdaabbba8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251126.0.174001/kopia-20251126.0.174001-linux-arm64.tar.gz"
    sha256 "0e4fb7c1f356d55296f57d154936a6d76af15151d94d0d6904415f31817e53de"
  end

  def install
    bin.install "kopia"
  end
end

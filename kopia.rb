# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250424.0.3219"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.3219/kopia-20250424.0.3219-macOS-x64.tar.gz"
    sha256 "39050288d1b2b0b40a323a3059c95e1c6db5a6e75d5db04bea631d73de7e4d51"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.3219/kopia-20250424.0.3219-macOS-arm64.tar.gz"
    sha256 "6494ea11f4c486b35e077696ee7a899813f010fb0e40863ca9b8e74b9ec8929d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.3219/kopia-20250424.0.3219-linux-x64.tar.gz"
    sha256 "6de83e695496fc1ea63fd5c724fa39c8d0221aa496232229e6730135aab00f8a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.3219/kopia-20250424.0.3219-linux-arm.tar.gz"
    sha256 "6fe71d423e944593aba55b792d664f3fc3cf55a25b2662402ed5f97c3cf2c5f4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250424.0.3219/kopia-20250424.0.3219-linux-arm64.tar.gz"
    sha256 "04a69911b7143bd4ce7890ee91f16f5874e39f5e0161cb9f0173ef7cccb1323b"
  end

  def install
    bin.install "kopia"
  end
end

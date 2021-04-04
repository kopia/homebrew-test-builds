# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.224554"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.224554/kopia-20210403.0.224554-macOS-x64.tar.gz"
    sha256 "7fa2de93d1ca3dda0a83fcb176fc008a2465db98b01a3b9a039a0991250a9917"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.224554/kopia-20210403.0.224554-macOS-arm64.tar.gz"
    sha256 "f1d225dd3ebf6d6e31749e32b09d40dda13ebae8db18e2edc8aa7970a3bba1fa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.224554/kopia-20210403.0.224554-linux-x64.tar.gz"
    sha256 "7fa3924ee55c18db7a9c883a7da670038190e06ea4a09dc2f14dcd11797c65dd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.224554/kopia-20210403.0.224554-linux-arm.tar.gz"
    sha256 "9686e031fcdb3403a31c4706da44885466f925859a946b0a8731fcd20385b19f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.224554/kopia-20210403.0.224554-linux-arm64.tar.gz"
    sha256 "aed4f4aa6184d655b3563f131d4ebffc65b6865d47bf5dbfeca71b59de1ab390"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260615.0.233849"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.233849/kopia-20260615.0.233849-macOS-x64.tar.gz"
    sha256 "a003d6cb3e906be08cb65dc931bf505db795257d90e4d580544a5286b6e18ac7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.233849/kopia-20260615.0.233849-macOS-arm64.tar.gz"
    sha256 "f40c6c27a75ef94113cc6f1104db3608d20917d171534d2ea803127a829d1196"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.233849/kopia-20260615.0.233849-linux-x64.tar.gz"
    sha256 "9656ac6ea8a8a225d4f32cd47949b147b16fa592662f9a81f64beeb43cfac452"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.233849/kopia-20260615.0.233849-linux-arm.tar.gz"
    sha256 "73b0b7522f855ed9bf8d1044d18a724c69afc6fac9477c1b3eb83b73c74dab1b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260615.0.233849/kopia-20260615.0.233849-linux-arm64.tar.gz"
    sha256 "83f048c2ddd97b01ed025f9d94dcfd0a60dfc62c33130e2de6bca29c17191f11"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250924.0.191337"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.191337/kopia-20250924.0.191337-macOS-x64.tar.gz"
    sha256 "0d4d6436f0e076e9589140eb2333bb4385f711204742fdb215ad3563ed837c29"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.191337/kopia-20250924.0.191337-macOS-arm64.tar.gz"
    sha256 "fbe6fce6926ac7526014be0b6ca2d05d7cbd1b27bfb052a001b917c3d461906d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.191337/kopia-20250924.0.191337-linux-x64.tar.gz"
    sha256 "7265d885922270638736ac5e0ac90d53285e8372a60f13a24104027c065f295c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.191337/kopia-20250924.0.191337-linux-arm.tar.gz"
    sha256 "568d169b082f25f83478c6e8f9369f33db715ad9eb81d124808614a3348ae66f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.191337/kopia-20250924.0.191337-linux-arm64.tar.gz"
    sha256 "fdb7b22fd5be6db262674aa29cc5c283028652306c5b6d04848f97bf8727dc2f"
  end

  def install
    bin.install "kopia"
  end
end

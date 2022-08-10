# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.182425"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.182425/kopia-20220809.0.182425-macOS-x64.tar.gz"
    sha256 "25aa9b08a7576bebb6e9766061cfc7bde9543c75b402ba7cf5348653d56c5f4a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.182425/kopia-20220809.0.182425-macOS-arm64.tar.gz"
    sha256 "5c807901db579b71b70eecf53feb1d692b30a3c3fed91a93a610674b67568684"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.182425/kopia-20220809.0.182425-linux-x64.tar.gz"
    sha256 "07b3f747e112add03c006116f46f7758d24d4118a9962210b1d96524ed99e977"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.182425/kopia-20220809.0.182425-linux-arm.tar.gz"
    sha256 "ae2cfa92219c974e2b9dcdd34fc667f4c0c1d7773c88973af778c3a3e0571612"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.182425/kopia-20220809.0.182425-linux-arm64.tar.gz"
    sha256 "2b16d344c0dad30ef27335c93e2d19c7c0363f18d2d7bed63df7603006708efd"
  end

  def install
    bin.install "kopia"
  end
end

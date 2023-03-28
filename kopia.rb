# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.30356"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.30356/kopia-20230328.0.30356-macOS-x64.tar.gz"
    sha256 "722b625960f6893922a9744c7169cb4ccb37f0be8d37e494fa923ad0d13d8a83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.30356/kopia-20230328.0.30356-macOS-arm64.tar.gz"
    sha256 "08291556cb9983b8f641e0f61283ad313ac0466892968f191900bf71fdc6ff2d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.30356/kopia-20230328.0.30356-linux-x64.tar.gz"
    sha256 "68bdbac0eea262c2a9d19882354c637024bf587cf1d8b3b5d104c3c07c0bfa90"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.30356/kopia-20230328.0.30356-linux-arm.tar.gz"
    sha256 "be409e74a3a58ca849b5d13a7aa4b5b34c6e25e9536e2686bade0f5b996d80e5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.30356/kopia-20230328.0.30356-linux-arm64.tar.gz"
    sha256 "d56ffa8a85121d63cdaa01ecb14cc6c4e6dca7242748f6a9062d87da1be4dd72"
  end

  def install
    bin.install "kopia"
  end
end

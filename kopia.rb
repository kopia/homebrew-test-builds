# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261028.0.13146"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.13146/kopia-20261028.0.13146-macOS-x64.tar.gz"
    sha256 "7170f7375025a60aef78d3ee26f7f21147123fe149db86e96c34170d31fe68b9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.13146/kopia-20261028.0.13146-macOS-arm64.tar.gz"
    sha256 "793b63934df759784edffc3c0a7f0db2f65c3e62a0edc389ba671e441715c6d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.13146/kopia-20261028.0.13146-linux-x64.tar.gz"
    sha256 "8bcb3972f71db2caa2a8c0219c1afa88a33ed21078a6e597466338a7ff5812a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.13146/kopia-20261028.0.13146-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.13146/kopia-20261028.0.13146-linux-arm64.tar.gz"
    sha256 "a896b9c339c4075300e9a98d453a7d81ea1252db0de0ee35fd1e9685c17ea797"
  end

  def install
    bin.install "kopia"
  end
end

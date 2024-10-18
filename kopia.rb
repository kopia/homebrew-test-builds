# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241018.0.101510"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.101510/kopia-20241018.0.101510-macOS-x64.tar.gz"
    sha256 "9f488b5c84ac6fa941dfeea879156c8db1b344ec29fc4e9e222940db8e9b2f2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.101510/kopia-20241018.0.101510-macOS-arm64.tar.gz"
    sha256 "0e818bab50ddbf17e9d9fe948eb634f4d9baec7101e1f750594170247fca48e9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.101510/kopia-20241018.0.101510-linux-x64.tar.gz"
    sha256 "e0e5a32505c34f2cc240476c008123c3ad13be91b6e5d13b35510ef5e3de6d3d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.101510/kopia-20241018.0.101510-linux-arm.tar.gz"
    sha256 "5dfe0c6a996dd27c86e2d75175610c5190b25a97f5c2179a2f50ef2d9005cf09"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241018.0.101510/kopia-20241018.0.101510-linux-arm64.tar.gz"
    sha256 "9278cc2912127df0af6405b6edcbe9dfd26be679ae6f5c890544c2471a45bd30"
  end

  def install
    bin.install "kopia"
  end
end

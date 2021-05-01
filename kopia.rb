# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210501.0.70533"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.70533/kopia-20210501.0.70533-macOS-x64.tar.gz"
    sha256 "9c7a73cb56eee1f3c1f659ac3b3fca0ff6e3e600a6d6b4de949f61594c62d5e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.70533/kopia-20210501.0.70533-macOS-arm64.tar.gz"
    sha256 "0e5fafde8065fc207ed434aef8f593e8320c7c4beeb55cf3ea2bd9208bb41f52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.70533/kopia-20210501.0.70533-linux-x64.tar.gz"
    sha256 "6f2236682d72bf2d0be41d2a800b43231809a5787e3c0516e6678bd5700df9ac"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.70533/kopia-20210501.0.70533-linux-arm.tar.gz"
    sha256 "3e40756f97b8813ffe184740e60273bb8489e2560d04c121164baf2d6d7faadd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210501.0.70533/kopia-20210501.0.70533-linux-arm64.tar.gz"
    sha256 "c11bcf8ad97748b116cc5b8fadd0b5ea4ec2510efac0d6be31fc038a6b0ef6d9"
  end

  def install
    bin.install "kopia"
  end
end

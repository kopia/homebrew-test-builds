# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220301.0.222516"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.222516/kopia-20220301.0.222516-macOS-x64.tar.gz"
    sha256 "84ca5230fb7c139a43943afb60f283ee671715ba214e912928e01de39df21143"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.222516/kopia-20220301.0.222516-macOS-arm64.tar.gz"
    sha256 "db15531be5c6eeef7ef4f84f4965bce20216630d1a508ad2aab790eaf0f91eff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.222516/kopia-20220301.0.222516-linux-x64.tar.gz"
    sha256 "b79dab7465c5c8def42ade433bd749bb55ae8f784018be8642387451d5de0f1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.222516/kopia-20220301.0.222516-linux-arm.tar.gz"
    sha256 "493729d5f6833330e0a881bfd2d4160baa9cf96bc87837a7ef7b008fa7781fde"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.222516/kopia-20220301.0.222516-linux-arm64.tar.gz"
    sha256 "d2d39f5c73cf0c5c760a76c33d39881b8b0679b422129abcd7ba8f2abd12b39a"
  end

  def install
    bin.install "kopia"
  end
end

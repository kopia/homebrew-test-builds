# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251118.0.184239"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.184239/kopia-20251118.0.184239-macOS-x64.tar.gz"
    sha256 "dfd052316d4842983fcf3fd0e87622eeb6ecd4dcb25a1bc7e4b9054042b350f1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.184239/kopia-20251118.0.184239-macOS-arm64.tar.gz"
    sha256 "7c83f16fccce83e2027f182564f2166c01a71d8b363a9c8e84857831d5cd97c5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.184239/kopia-20251118.0.184239-linux-x64.tar.gz"
    sha256 "edf7ddb276f8f00ad34b53867f1e0fe7194ac620b106deac3268e617c4c958a9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.184239/kopia-20251118.0.184239-linux-arm.tar.gz"
    sha256 "30debfe841a99dc24f83db7f741baebb56922e7f4b10088d8b652100a2788169"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251118.0.184239/kopia-20251118.0.184239-linux-arm64.tar.gz"
    sha256 "a47e7597114acb7d5835309d69bcac1f4155b0302014efff14311b24207bb651"
  end

  def install
    bin.install "kopia"
  end
end

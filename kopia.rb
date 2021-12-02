# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211201.0.180151"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180151/kopia-20211201.0.180151-macOS-x64.tar.gz"
    sha256 "8b83d978374b85adeeb3bcf5c44f8b7d08a4776dfa889059f729204feb2d3bd8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180151/kopia-20211201.0.180151-macOS-arm64.tar.gz"
    sha256 "bb9a8a2c8ad6d93605a44c2cffeaa46c6fa73b4af6accf1c2348c303b09fe6f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180151/kopia-20211201.0.180151-linux-x64.tar.gz"
    sha256 "562e0140f76d33b91bb3c9aa05b2f8112fa15a593f2034bfa6dacc1db961911a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180151/kopia-20211201.0.180151-linux-arm.tar.gz"
    sha256 "872d988c1add9c4244cd25bc4cad699093cef8f0edbdd0116ebda1c7b50b569e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211201.0.180151/kopia-20211201.0.180151-linux-arm64.tar.gz"
    sha256 "a3ccc6294de35ad6b9b35e8653e87c1f032e84ad0afb450c184486e64403a7f2"
  end

  def install
    bin.install "kopia"
  end
end

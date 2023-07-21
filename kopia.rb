# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230721.0.2917"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.2917/kopia-20230721.0.2917-macOS-x64.tar.gz"
    sha256 "fbf0d8ff4090dc87467f689f9fedef0a11c46fc7d1df7f242a168463b7595127"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.2917/kopia-20230721.0.2917-macOS-arm64.tar.gz"
    sha256 "7ef844ebda18ea220ae6ed5367337a0ba81274885f5ca657727ad205a3366f2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.2917/kopia-20230721.0.2917-linux-x64.tar.gz"
    sha256 "ae43ea230804fa100d692bdd1fafd8cdc713977ce7486b5a0aeeb97e890c4580"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.2917/kopia-20230721.0.2917-linux-arm.tar.gz"
    sha256 "2a6554a9e49c4bdc5ab66e4e62620f0dee28fda3407e2d8df740b9654fa10ed4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.2917/kopia-20230721.0.2917-linux-arm64.tar.gz"
    sha256 "63fdb67ae3706644c97d216e0139226dd59be1ef45fa88abe02ac525c84c7789"
  end

  def install
    bin.install "kopia"
  end
end

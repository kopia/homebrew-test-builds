# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240212.0.123726"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.123726/kopia-20240212.0.123726-macOS-x64.tar.gz"
    sha256 "1e5989f229f3a09235e42834f5e8bb11784b506f2a64c376aed4a53b10b22893"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.123726/kopia-20240212.0.123726-macOS-arm64.tar.gz"
    sha256 "70b01022f232ea6e5973828e2662952d0ea8344d7defb80cea2308e38fb9f625"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.123726/kopia-20240212.0.123726-linux-x64.tar.gz"
    sha256 "60a28989352d4c2fbeec10a0c1fa67f88cc14858e116c0ee9c322bfc9e1d6351"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.123726/kopia-20240212.0.123726-linux-arm.tar.gz"
    sha256 "a86383464a0566e66c3fc7ebc9d9606664169f775ee275d001656f94e3ab2794"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.123726/kopia-20240212.0.123726-linux-arm64.tar.gz"
    sha256 "ecc5525fe96547bb9eabeb03e5b0322e40c0aa4371f2565bcccc0067d9a2571c"
  end

  def install
    bin.install "kopia"
  end
end

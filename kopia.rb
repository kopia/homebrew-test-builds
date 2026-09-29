# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260929.0.32751"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.32751/kopia-20260929.0.32751-macOS-x64.tar.gz"
    sha256 "f8bb708ceb7f1ec8976ad8dc655cd536607691666a79e336e1914787d2fa47e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.32751/kopia-20260929.0.32751-macOS-arm64.tar.gz"
    sha256 "bc1da73fd36dcbe8a5e22f92de883f8786a5846d73c1b46397211940885f71e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.32751/kopia-20260929.0.32751-linux-x64.tar.gz"
    sha256 "3670d2fc76c0634ca9761290ec29d33a1681baa0e901f485c42ba98a4fa69681"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.32751/kopia-20260929.0.32751-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260929.0.32751/kopia-20260929.0.32751-linux-arm64.tar.gz"
    sha256 "a8d51ca6f7337d31fba057accbc32a03e4e7b351cb928917204d6ec16acc7167"
  end

  def install
    bin.install "kopia"
  end
end

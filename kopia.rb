# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240415.0.172935"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240415.0.172935/kopia-20240415.0.172935-macOS-x64.tar.gz"
    sha256 "b17878cff8007a0d558b72ba15a1342a62387e8bfcc6dd1a05a51d2d339c7f56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240415.0.172935/kopia-20240415.0.172935-macOS-arm64.tar.gz"
    sha256 "2d9250eeaf5e50a46db4c05b9355ffb41a33925af155e105c248db67aab35e37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240415.0.172935/kopia-20240415.0.172935-linux-x64.tar.gz"
    sha256 "60aad967ebf789e1e68848423cc7d5835931628e13091cc9cb310576769659cf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240415.0.172935/kopia-20240415.0.172935-linux-arm.tar.gz"
    sha256 "a0eb819be8feeab35e292320251131a0fb4218f8d8ac3a4b70412b7351a429f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240415.0.172935/kopia-20240415.0.172935-linux-arm64.tar.gz"
    sha256 "b1b55d4d8c377f3887956a4434c046705461a2ac29128cc925a10894f6dc2fa5"
  end

  def install
    bin.install "kopia"
  end
end

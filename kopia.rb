# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260925.0.53553"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.53553/kopia-20260925.0.53553-macOS-x64.tar.gz"
    sha256 "98b025a110008541d3345f6c377d8a3796f0157eb59b9722b7dd8e3b1cf4da51"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.53553/kopia-20260925.0.53553-macOS-arm64.tar.gz"
    sha256 "72e23cf687a265704581c208e9b7633b4b4aa63ac5561c8b387c7af8edd8113a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.53553/kopia-20260925.0.53553-linux-x64.tar.gz"
    sha256 "061413f4c64cb7a99a287220362f85f338e1e07dccc33ed3c6fa83d02081fbeb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.53553/kopia-20260925.0.53553-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.53553/kopia-20260925.0.53553-linux-arm64.tar.gz"
    sha256 "4db7a4faa4285fe2efb8f05e57f3061413225633015f2bc64e7e5c63f9d60a13"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.34336"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.34336/kopia-20260910.0.34336-macOS-x64.tar.gz"
    sha256 "c2997c3be46bcfee5ff475f9b54d60bf2b971c9076a69cacf37c8c3de936a5be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.34336/kopia-20260910.0.34336-macOS-arm64.tar.gz"
    sha256 "eb39ea222a77767432a1cc4baac3ccb19e149c6aef5f01a74b449403357d9fb4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.34336/kopia-20260910.0.34336-linux-x64.tar.gz"
    sha256 "47f64809d38db40df7f187dff82507058aab3838825e73c23d86a7551d0c0984"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.34336/kopia-20260910.0.34336-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.34336/kopia-20260910.0.34336-linux-arm64.tar.gz"
    sha256 "b92e09f4819c243bc37fa3ca87ca536538fea9773258ab0349c64d6a386ad94e"
  end

  def install
    bin.install "kopia"
  end
end

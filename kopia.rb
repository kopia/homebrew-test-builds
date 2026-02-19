# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260219.0.45918"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.45918/kopia-20260219.0.45918-macOS-x64.tar.gz"
    sha256 "3841611131ce5366b374818d73dcb41e48558c33fd7e51bf79d7aad8ba4205da"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.45918/kopia-20260219.0.45918-macOS-arm64.tar.gz"
    sha256 "16676d51cdb88661d5e8a5d6b2becf591e3c5e7a174171c9fb7f895214b027b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.45918/kopia-20260219.0.45918-linux-x64.tar.gz"
    sha256 "f1c083ecea8c8f1dc3a83c720147aae641e2df90a4d9838c53e860b619cfbeaf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.45918/kopia-20260219.0.45918-linux-arm.tar.gz"
    sha256 "3f8ee24b1871e2c187926a40d988f15d9cf64c8fd4484abcddf6bd11ea394105"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.45918/kopia-20260219.0.45918-linux-arm64.tar.gz"
    sha256 "607c4c0f49b3b3adc30d9b5c88e3fa5c3c45225112291186e770d1f0586bc887"
  end

  def install
    bin.install "kopia"
  end
end

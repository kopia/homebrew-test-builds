# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221116.0.200854"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221116.0.200854/kopia-20221116.0.200854-macOS-x64.tar.gz"
    sha256 "5a25ceb991085745e6eb951d66ce027c1aab1c0f1d6f0d08fe07cff1751772e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221116.0.200854/kopia-20221116.0.200854-macOS-arm64.tar.gz"
    sha256 "3ffeaeb69292719f306e720320143119c2b19c0e82adc76760241762cf6da203"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221116.0.200854/kopia-20221116.0.200854-linux-x64.tar.gz"
    sha256 "0b660c4e697f8fcd30c51cd11bccb1dfe02e6cd15b0f2fe776ef091134aaac4b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221116.0.200854/kopia-20221116.0.200854-linux-arm.tar.gz"
    sha256 "7893332e8bdfad8915324a59900ec71d66d95e3375935e0925b18d33e08a82ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221116.0.200854/kopia-20221116.0.200854-linux-arm64.tar.gz"
    sha256 "0216f48e2f5b9f31a3e04c0be0d91fecfad88f6f6c60f82eae5d742bce1f7b5b"
  end

  def install
    bin.install "kopia"
  end
end

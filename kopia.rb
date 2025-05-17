# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250517.0.215051"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.215051/kopia-20250517.0.215051-macOS-x64.tar.gz"
    sha256 "c64b5a5e91f6654020e511c0a7f0607974f3cd98c51f8cc8062dadd1bf00633b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.215051/kopia-20250517.0.215051-macOS-arm64.tar.gz"
    sha256 "e2def28ed873367aa57ead353733e8bf4a234ecee91ac85b85183fc7b1a575b9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.215051/kopia-20250517.0.215051-linux-x64.tar.gz"
    sha256 "58a18c74ef8d4fd828ea46c61422a16c297bde8052814fa182b389889c9670b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.215051/kopia-20250517.0.215051-linux-arm.tar.gz"
    sha256 "fa15b70bcc7f306fffb868a9710f19a92bc0e5ad8dff4aee6b48ede501e5a773"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250517.0.215051/kopia-20250517.0.215051-linux-arm64.tar.gz"
    sha256 "74cd7d7efde89b5c6fe64db78a39ba64060e2cc1b01d1e72a8d2107a40a2cbdd"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250924.0.20840"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.20840/kopia-20250924.0.20840-macOS-x64.tar.gz"
    sha256 "410859597ed317ccb7794bf08ace37a83899f5b3e69ec52cc36d35a338de1938"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.20840/kopia-20250924.0.20840-macOS-arm64.tar.gz"
    sha256 "7cc7ec4afcee26a54fe43772ddc7961aafbad235570a7247add4b7843c28c25c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.20840/kopia-20250924.0.20840-linux-x64.tar.gz"
    sha256 "008e3762af27b804b7d0418b7c608f744fc861ab756a187052df5044bafa1fa7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.20840/kopia-20250924.0.20840-linux-arm.tar.gz"
    sha256 "d1fd03881aad8f2381ac0f208dba5551a47e93dcaaa25151305ec9327f326f98"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.20840/kopia-20250924.0.20840-linux-arm64.tar.gz"
    sha256 "e41f3135cdfb52f43f6268b894c8d4be2352e2c050aac4d97babc887422bebf6"
  end

  def install
    bin.install "kopia"
  end
end

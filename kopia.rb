# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221110.0.53006"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.53006/kopia-20221110.0.53006-macOS-x64.tar.gz"
    sha256 "c5beadcec1143c9e177e9a65f696cb6518cec3e91ceaca6defe29a716d379098"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.53006/kopia-20221110.0.53006-macOS-arm64.tar.gz"
    sha256 "b43a111269b4fa73c46123e5e434d13214ff595448158c0ee9be26e91d68a480"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.53006/kopia-20221110.0.53006-linux-x64.tar.gz"
    sha256 "63f157cfdde8a4f4498a9086894c567356250e134c2dea9bed2f6dfae5419c0f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.53006/kopia-20221110.0.53006-linux-arm.tar.gz"
    sha256 "feae0a0b3e812c70bee6506193504b4f91996ab2ce98dd089401eeb4602e2468"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221110.0.53006/kopia-20221110.0.53006-linux-arm64.tar.gz"
    sha256 "5a4a7cdb10c27097ad2972cbe71d9139dd3caa5aee80d40fbedc15f99cfd24bd"
  end

  def install
    bin.install "kopia"
  end
end

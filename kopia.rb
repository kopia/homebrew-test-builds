# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260219.0.234846"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.234846/kopia-20260219.0.234846-macOS-x64.tar.gz"
    sha256 "030f968e7bcfb926d33627b75860f84498b7f8e2c7b15b9cacbb7d9cf71e1b79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.234846/kopia-20260219.0.234846-macOS-arm64.tar.gz"
    sha256 "9f94cc4ec5b1cb12d690a37d52412de6c8fe375db5486d8acb0b0a65a81349c4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.234846/kopia-20260219.0.234846-linux-x64.tar.gz"
    sha256 "c195118b846991c572f04af09a8cfd4dc69616ef417b845084d9a54bd06a6ea8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.234846/kopia-20260219.0.234846-linux-arm.tar.gz"
    sha256 "194419bc0c87a1b1b4a1de614ceb1f170637baaf6712394684c36d0976336e90"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260219.0.234846/kopia-20260219.0.234846-linux-arm64.tar.gz"
    sha256 "6b8888cb26cde357c7b4460d8d89b1270d5c144bdf7eee9b61b276b970db8448"
  end

  def install
    bin.install "kopia"
  end
end

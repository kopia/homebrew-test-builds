# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220509.0.200416"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.200416/kopia-20220509.0.200416-macOS-x64.tar.gz"
    sha256 "b25dac4c191581f5537f11734b02cb850b2838425b80c6796c242ddb5bae339e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.200416/kopia-20220509.0.200416-macOS-arm64.tar.gz"
    sha256 "0a5880766eadfe3b5e82da25f12c35a59097b09f5fb7e735ee43befa67c6467a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.200416/kopia-20220509.0.200416-linux-x64.tar.gz"
    sha256 "63b9d4efa3de72565de42367987bcef75d9362ccea74e485803a0728fd433c66"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.200416/kopia-20220509.0.200416-linux-arm.tar.gz"
    sha256 "38a8bc3afde5dde84eeb84d7968228d4c68fc1c0d2175d8548d65f2ba7ca3ed8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220509.0.200416/kopia-20220509.0.200416-linux-arm64.tar.gz"
    sha256 "0b9015529b19a5c43ca5886b523cb1cc1a745d274743d53bcf5c57ac246029e7"
  end

  def install
    bin.install "kopia"
  end
end

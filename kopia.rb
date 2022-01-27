# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220127.0.92259"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.92259/kopia-20220127.0.92259-macOS-x64.tar.gz"
    sha256 "2ff93430f6dc6d1b7c3e7764737a8ffbdb24df1d16fc86a1e08daeb31b3c1b7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.92259/kopia-20220127.0.92259-macOS-arm64.tar.gz"
    sha256 "7de624dac3ef367f39f1a4b9ef6c449a973fca52dcd2cfdbdc5a483588b93814"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.92259/kopia-20220127.0.92259-linux-x64.tar.gz"
    sha256 "bf7af529be960b39695a95179272b2ea61842395a347c8ea89b85b03e7b2e8ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.92259/kopia-20220127.0.92259-linux-arm.tar.gz"
    sha256 "5a724c5220e8d4eee5c117950cdc8695958e35d515eb422128bc04217f6bb147"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220127.0.92259/kopia-20220127.0.92259-linux-arm64.tar.gz"
    sha256 "d776352a7fdcf3882361252e57423edd39b57e1a72016c67e7299d5c000b7cbc"
  end

  def install
    bin.install "kopia"
  end
end

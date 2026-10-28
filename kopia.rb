# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261028.0.5955"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.5955/kopia-20261028.0.5955-macOS-x64.tar.gz"
    sha256 "264714cd7435d20b5e81eb8cf67cef75943fd9196a8e75cca65b742e6c44f83d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.5955/kopia-20261028.0.5955-macOS-arm64.tar.gz"
    sha256 "0e98efb39a0904aa22480a197aa985b8a8b6fe5f28b11f6ddc64ce7667bddd25"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.5955/kopia-20261028.0.5955-linux-x64.tar.gz"
    sha256 "b44b48ab73fb1cff1f487e7a4b1ff4cade991bddf7d2dd0690549107797382ce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.5955/kopia-20261028.0.5955-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261028.0.5955/kopia-20261028.0.5955-linux-arm64.tar.gz"
    sha256 "c1b29d2abf7ba117d03d6db5a2ee266a577adce5eb13c3e28116370df936414a"
  end

  def install
    bin.install "kopia"
  end
end

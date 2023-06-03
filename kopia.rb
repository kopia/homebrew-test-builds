# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230602.0.165704"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230602.0.165704/kopia-20230602.0.165704-macOS-x64.tar.gz"
    sha256 "f97dd41e86c2a4246accbe5097b80e61e85171ca1922a15492f1e0b03cd29146"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230602.0.165704/kopia-20230602.0.165704-macOS-arm64.tar.gz"
    sha256 "416834a8ab3459124dee43d9100aaf52516831bd8e8becc2dbfbe6b7021c2f25"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230602.0.165704/kopia-20230602.0.165704-linux-x64.tar.gz"
    sha256 "0f14e5a5d3227afe2edb2b03a436122c74f2506817986f2292d2a5e7d08689b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230602.0.165704/kopia-20230602.0.165704-linux-arm.tar.gz"
    sha256 "1693d8ec0a7d5bee09400cc190495f9842e2065d37e82ef6831e3946bdeda043"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230602.0.165704/kopia-20230602.0.165704-linux-arm64.tar.gz"
    sha256 "f9433c1da3e37008776f6ccb0ec3744ab628504d001abb5f9379f1edccef867e"
  end

  def install
    bin.install "kopia"
  end
end

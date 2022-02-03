# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.212721"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.212721/kopia-20220202.0.212721-macOS-x64.tar.gz"
    sha256 "adfe9a0abbf4730ecd85b96b468a25f4b3ebf4fd5bb5c0b7b768d25dcb18f6de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.212721/kopia-20220202.0.212721-macOS-arm64.tar.gz"
    sha256 "3bce5df63d608b35d7ad4af322b81eeebe72e43d566c968c44461ae90f4b9a72"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.212721/kopia-20220202.0.212721-linux-x64.tar.gz"
    sha256 "93fc076a01c18d065b0ac1aa63a560cfdee5ef59a3279475028e5f733731dbc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.212721/kopia-20220202.0.212721-linux-arm.tar.gz"
    sha256 "b20866058edc8536f54a9b990eac0ca43ef3f9343f71ef3617fd65f3f7e981af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.212721/kopia-20220202.0.212721-linux-arm64.tar.gz"
    sha256 "72b79152e779e6e28828995c81cb547c1a9772c75ce47100c0180b207c38b096"
  end

  def install
    bin.install "kopia"
  end
end

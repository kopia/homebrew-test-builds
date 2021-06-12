# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210611.0.185721"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185721/kopia-20210611.0.185721-macOS-x64.tar.gz"
    sha256 "b22121ab9de7e2792764eab7432432cc9317794da9967e95c8fa955a44359492"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185721/kopia-20210611.0.185721-macOS-arm64.tar.gz"
    sha256 "4158d42d43364648fbadaef1e70604bd72c06eeb9f6833ab74d10823e16462a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185721/kopia-20210611.0.185721-linux-x64.tar.gz"
    sha256 "84829bac9e1451fa1254b60533c3fcda7721cca23c8adaa25aefd00b04cea4ba"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185721/kopia-20210611.0.185721-linux-arm.tar.gz"
    sha256 "9cbd979fd548f291173cb4d123c7a5bb96ad30670eb56e4dcad92903c6ad2e0b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210611.0.185721/kopia-20210611.0.185721-linux-arm64.tar.gz"
    sha256 "510ba0daff92191b964a28151783f7ab9b2774e7d2c925b02d6b4cb5eed4cd4b"
  end

  def install
    bin.install "kopia"
  end
end

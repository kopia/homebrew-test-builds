# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.113908"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.113908/kopia-20210412.0.113908-macOS-x64.tar.gz"
    sha256 "07f4b137b4eefcdbd7b31179f8b4ca5049ef0a903412aa80c94a3d363b479a81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.113908/kopia-20210412.0.113908-macOS-arm64.tar.gz"
    sha256 "d155d247c13091eb5347b67b21eee74de51390c480ea15a4bfc278add159fee7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.113908/kopia-20210412.0.113908-linux-x64.tar.gz"
    sha256 "fd82a2d300f744a95a8c09e0035591a1e321606df6a22ffa86ecd8667f7a405c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.113908/kopia-20210412.0.113908-linux-arm.tar.gz"
    sha256 "ad8ad6522ea96097afade5312b3337a25e91f67f47d7823e452ce2d2e46d9131"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.113908/kopia-20210412.0.113908-linux-arm64.tar.gz"
    sha256 "42b7abe1718aa8b2c39b861a947a45b7f2d052fc6f12534d127340eb16ae2570"
  end

  def install
    bin.install "kopia"
  end
end

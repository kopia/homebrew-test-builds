# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210518.0.212232"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.212232/kopia-20210518.0.212232-macOS-x64.tar.gz"
    sha256 "82ba1e4c0101908fb3f0c27ebe3b3678c3e29961c9f0f24adcf348f7b2142ce6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.212232/kopia-20210518.0.212232-macOS-arm64.tar.gz"
    sha256 "3159721b49832c078bf19ad24d06a70fcb5da3701d67da282cf520cbec357b05"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.212232/kopia-20210518.0.212232-linux-x64.tar.gz"
    sha256 "888cd36e3dead0ff836878454d3d9b6cf09e9d89977b7c1d64449b7b54f9d6a8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.212232/kopia-20210518.0.212232-linux-arm.tar.gz"
    sha256 "15699cc49832a9a8c8fef2fa4037b32cabe6367255fa15efbe8fd14f379640ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.212232/kopia-20210518.0.212232-linux-arm64.tar.gz"
    sha256 "8ca59b9dd3710e3152d0e6e15fdaebb290917afc8224867c53fac152afed15a3"
  end

  def install
    bin.install "kopia"
  end
end

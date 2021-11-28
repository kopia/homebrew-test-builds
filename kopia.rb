# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211127.0.181445"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211127.0.181445/kopia-20211127.0.181445-macOS-x64.tar.gz"
    sha256 "109cf825a58cafcf4bf602d209801f463dbb2291f2b36d519beadcaccd059d12"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211127.0.181445/kopia-20211127.0.181445-macOS-arm64.tar.gz"
    sha256 "07fb4c99e9d1f8a9f7d44b3533d2149e21b803078d31174484aabb0a0f8d814c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211127.0.181445/kopia-20211127.0.181445-linux-x64.tar.gz"
    sha256 "550bed07dde086166b1a25e164bbaa660fc20e76fa2d7f82492b2963f6f79ca9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211127.0.181445/kopia-20211127.0.181445-linux-arm.tar.gz"
    sha256 "3e665674dba48af845257438acaac560fdcf1e788a203704b7d9cec72c7490fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211127.0.181445/kopia-20211127.0.181445-linux-arm64.tar.gz"
    sha256 "846a8c3155c5875606bca924ca9d98ff2350a89bc9745b0602992e2a65ff4432"
  end

  def install
    bin.install "kopia"
  end
end

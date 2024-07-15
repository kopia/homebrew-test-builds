# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240715.0.140636"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.140636/kopia-20240715.0.140636-macOS-x64.tar.gz"
    sha256 "bbc3e69098f2aecef812920bac525ed6fa8fbb05eea29478c42f02b2067b468b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.140636/kopia-20240715.0.140636-macOS-arm64.tar.gz"
    sha256 "9cbca2b0cb15b8316ca9c8c068d5dcf92165440e1bc8a24185de11e4ea416d99"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.140636/kopia-20240715.0.140636-linux-x64.tar.gz"
    sha256 "8055a6ed73a8da3aea1db7905a499355475c2ff38e60e9b5847b489878370fba"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.140636/kopia-20240715.0.140636-linux-arm.tar.gz"
    sha256 "8181667f13fb5001ea827470e2d7ae7f00431f5dc1aee26157361a2d95f495b4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.140636/kopia-20240715.0.140636-linux-arm64.tar.gz"
    sha256 "e08c57908706d536e6247a000af7748468caacafcc03169f68fc7c016a719e42"
  end

  def install
    bin.install "kopia"
  end
end

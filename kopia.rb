# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251001.0.232555"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.232555/kopia-20251001.0.232555-macOS-x64.tar.gz"
    sha256 "e61343ee4b6f41e6d7fc0d53e33bd5b6ef1e7c8a0179f6369b09de9c466a143e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.232555/kopia-20251001.0.232555-macOS-arm64.tar.gz"
    sha256 "1dd9dc098d362a06652f0784ee5aedad75a97c0ab75e1b4b5f0fec8b4fbd80de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.232555/kopia-20251001.0.232555-linux-x64.tar.gz"
    sha256 "cb53f4102e02519892dac66eb7783047910d80f2a90e55e20ea160c9b0f0bee2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.232555/kopia-20251001.0.232555-linux-arm.tar.gz"
    sha256 "5ab251a0d964fcae4159dd8defc727166c45a1d8f88185b70692c0dcaa314b1d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.232555/kopia-20251001.0.232555-linux-arm64.tar.gz"
    sha256 "3dea37c24f37af9678c648a9adac63204433bc4fc248c3dd7c7e3bf005cfeb64"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.84843"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.84843/kopia-20210605.0.84843-macOS-x64.tar.gz"
    sha256 "09f7adb5a205fc5d7e0455ce40dbe0281b5b946761f725731f4d1f9cf048f20f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.84843/kopia-20210605.0.84843-macOS-arm64.tar.gz"
    sha256 "128d03be1d108f264701bdcdb344d8e2c7fb19fd2e2316053f46b5e5038cf835"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.84843/kopia-20210605.0.84843-linux-x64.tar.gz"
    sha256 "e0b11c19c8f6b1d438ff0880472ab499cdbc9e0d12fd0349faf388195f42d32e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.84843/kopia-20210605.0.84843-linux-arm.tar.gz"
    sha256 "66881c73ab9cee9b13c83811cd749213d12e7284a7e5ea9ac2964cab454ea40c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.84843/kopia-20210605.0.84843-linux-arm64.tar.gz"
    sha256 "81bcaec1b894def7c89b2203d1b702138488724492231eeaa34167a8f6adca86"
  end

  def install
    bin.install "kopia"
  end
end

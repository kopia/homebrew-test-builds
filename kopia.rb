# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230722.0.125323"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230722.0.125323/kopia-20230722.0.125323-macOS-x64.tar.gz"
    sha256 "3892d93de175ee85a6564260414b4a0b39619086eccf9a4da34f4b459183ce63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230722.0.125323/kopia-20230722.0.125323-macOS-arm64.tar.gz"
    sha256 "67972c79601bec30e9936b0569e8b0264cb54d9b48872a0b3afba4201600d8d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230722.0.125323/kopia-20230722.0.125323-linux-x64.tar.gz"
    sha256 "7dca0cbb55f7da29ed2607a00241ecd026c9519bebf88588436afc083cb89438"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230722.0.125323/kopia-20230722.0.125323-linux-arm.tar.gz"
    sha256 "f7704a3ca915cf9cde8a4ed4aef6a51374be0cbc945f67dc59d27f918cf58908"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230722.0.125323/kopia-20230722.0.125323-linux-arm64.tar.gz"
    sha256 "d4065978822b26f23694293f6131dbe30fabb5034fdf89eb220abf97acb8e294"
  end

  def install
    bin.install "kopia"
  end
end

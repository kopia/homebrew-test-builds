# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240930.0.171132"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.171132/kopia-20240930.0.171132-macOS-x64.tar.gz"
    sha256 "2b6479be31091efed6099a85d21951c960537f71886ff990d55849bf7af3200b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.171132/kopia-20240930.0.171132-macOS-arm64.tar.gz"
    sha256 "dbf9ed0e8cc7ac5766414dae99f2ad94068eefff95f1c108d54ef9572e3da349"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.171132/kopia-20240930.0.171132-linux-x64.tar.gz"
    sha256 "cc33b7ba2bc582ebed024927f93fdbabf6badb4fffbeb0ba36b610c0dd07c0b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.171132/kopia-20240930.0.171132-linux-arm.tar.gz"
    sha256 "2f78b0497581431d97d9ce2448b6a49cf52035fac783ea2f71883f6985a0189b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240930.0.171132/kopia-20240930.0.171132-linux-arm64.tar.gz"
    sha256 "a045837a5c409894a86b7153f19095e8379dd4097c19cd4428e166f992c9e3fa"
  end

  def install
    bin.install "kopia"
  end
end

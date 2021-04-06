# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.84659"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84659/kopia-20210406.0.84659-macOS-x64.tar.gz"
    sha256 "bf7f46df7f303309c16a4216000fea44812bde3fae4f38edebef025868d4e785"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84659/kopia-20210406.0.84659-macOS-arm64.tar.gz"
    sha256 "316b00b27c2e283c3981998eb674adce89d8274bd244574b6d8ccefe4911a965"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84659/kopia-20210406.0.84659-linux-x64.tar.gz"
    sha256 "fbaefa30249a9f3d4d6a24b6d70e3c8c009383ce1fbc71d0e0258b34c224552f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84659/kopia-20210406.0.84659-linux-arm.tar.gz"
    sha256 "d674f882a29e919ffdc76133fbbcf02b52688131a57403edfe9e591f8cd0dfa0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84659/kopia-20210406.0.84659-linux-arm64.tar.gz"
    sha256 "17e9c5cad2f618f73485af782b764697cdc86d7f2e0d14f443c4e1bfd33d3d9b"
  end

  def install
    bin.install "kopia"
  end
end

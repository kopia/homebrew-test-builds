# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260522.0.215720"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260522.0.215720/kopia-20260522.0.215720-macOS-x64.tar.gz"
    sha256 "28017ca8d9b8a3b8c570ef9627b4bffb999ad48563cb325074782e5ce6a69faf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260522.0.215720/kopia-20260522.0.215720-macOS-arm64.tar.gz"
    sha256 "da62c374880379abadf063f201f22c5547dcb58020fde2120c4b993a9fb91c1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260522.0.215720/kopia-20260522.0.215720-linux-x64.tar.gz"
    sha256 "c51e6e6d2ff2be4a93776c5ae80570ecf8321f87f9f5f228c6506763839c1051"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260522.0.215720/kopia-20260522.0.215720-linux-arm.tar.gz"
    sha256 "14f9cb36044be0891e96d26e5bd788f3ca96f336c580fba07279941a57cb3681"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260522.0.215720/kopia-20260522.0.215720-linux-arm64.tar.gz"
    sha256 "ba01fc94eee8905bf808c1d8b7f32bb3465cacfe3685ce97a6af8903ce38849e"
  end

  def install
    bin.install "kopia"
  end
end

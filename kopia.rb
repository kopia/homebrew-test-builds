# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260909.0.13519"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.13519/kopia-20260909.0.13519-macOS-x64.tar.gz"
    sha256 "2d4cb712a3a0eb4afc6ee23a671d9ff23be6ad13a99880e0bf87e74d27cc20cb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.13519/kopia-20260909.0.13519-macOS-arm64.tar.gz"
    sha256 "0ff99e36e4127cd3dc3d7a5f0ce23a7379d55ab927e34f86c21c8f6fb62b620a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.13519/kopia-20260909.0.13519-linux-x64.tar.gz"
    sha256 "f9b3a5dbdf447ea2b0bc71da8286720e3f4cda56b8882a30cc14054d32524e9b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.13519/kopia-20260909.0.13519-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260909.0.13519/kopia-20260909.0.13519-linux-arm64.tar.gz"
    sha256 "a55d90be3cebfdde6d6ff49254f0e7c0b4909f22574385c340e86e161ef13cfa"
  end

  def install
    bin.install "kopia"
  end
end

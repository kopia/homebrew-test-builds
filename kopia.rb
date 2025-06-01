# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250601.0.204720"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.204720/kopia-20250601.0.204720-macOS-x64.tar.gz"
    sha256 "ab145f2477970f1108052fa84ce4cc7314af344aa58b54f8d011ef54eacfd544"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.204720/kopia-20250601.0.204720-macOS-arm64.tar.gz"
    sha256 "7e819b67f3164d28caa7af2bbccfd8a2939261802f57003b89aad651c3d36259"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.204720/kopia-20250601.0.204720-linux-x64.tar.gz"
    sha256 "0777a35e2da000dcd4758532503fb522ed1022f6e81ce5178184b84548405847"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.204720/kopia-20250601.0.204720-linux-arm.tar.gz"
    sha256 "5a1d331cbd7378ce5a8e858c5d4514899db835d34e6d98d8a4285f5824e1698a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250601.0.204720/kopia-20250601.0.204720-linux-arm64.tar.gz"
    sha256 "85554d52e8a25e51dc3a9662c21e6243ff67c2045afc8345e48559057fefaf09"
  end

  def install
    bin.install "kopia"
  end
end

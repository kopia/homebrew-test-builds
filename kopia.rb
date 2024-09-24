# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240924.0.2220"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240924.0.2220/kopia-20240924.0.2220-macOS-x64.tar.gz"
    sha256 "2ce895105c4cc96abb43de0f92384f85702167b3efa7822fcbb181b82bf1b79d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240924.0.2220/kopia-20240924.0.2220-macOS-arm64.tar.gz"
    sha256 "08916636e13726554f946baa747303e0cfca0e2204cd4bbd37518f4f84a4ec12"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240924.0.2220/kopia-20240924.0.2220-linux-x64.tar.gz"
    sha256 "5be23b386fe87e05b4c7694a4dc6db67ef6397d01b17cfc1de74bb5f44ba74be"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240924.0.2220/kopia-20240924.0.2220-linux-arm.tar.gz"
    sha256 "2619c7d90cc6601638fe0e4073b58f8ac3f3ce5ba3a6f01285f571788f7eb06c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240924.0.2220/kopia-20240924.0.2220-linux-arm64.tar.gz"
    sha256 "97a7614003a4c85d1fea641b2feb3540985b6b15004faf2e816caf79f62f1a4f"
  end

  def install
    bin.install "kopia"
  end
end

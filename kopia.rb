# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240313.0.3446"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.3446/kopia-20240313.0.3446-macOS-x64.tar.gz"
    sha256 "10fb81ec9df7e9b0c0c7072a632d039bab6289a6a081a14f01d7aae07666defc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.3446/kopia-20240313.0.3446-macOS-arm64.tar.gz"
    sha256 "0be9068e951cc63c6e68f914e3bbfc39a07d26c5e01e30c1edc9f794787bfaee"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.3446/kopia-20240313.0.3446-linux-x64.tar.gz"
    sha256 "fed0a7c40ff58af245d84165a0b7567db920fa1662fcc8e623e49033373d62c9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.3446/kopia-20240313.0.3446-linux-arm.tar.gz"
    sha256 "2e46612eb89933c1584c7b4cba7e4c6efb3b4858556432e279f03e4a9cd51c6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240313.0.3446/kopia-20240313.0.3446-linux-arm64.tar.gz"
    sha256 "8ec3c85b325de67140163db92fb891c2e052d6278c66985eec540ec9c148eb13"
  end

  def install
    bin.install "kopia"
  end
end

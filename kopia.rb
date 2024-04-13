# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240412.0.225911"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.225911/kopia-20240412.0.225911-macOS-x64.tar.gz"
    sha256 "a845e040ecc2d8461b4af5729686b7618500212ce7b0c121b27985df366805fd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.225911/kopia-20240412.0.225911-macOS-arm64.tar.gz"
    sha256 "7890f0327fa40d53099645d384ae9d9a0147a054691c4e406461f4a12a159bb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.225911/kopia-20240412.0.225911-linux-x64.tar.gz"
    sha256 "fd318b1452be455913682bf5160cae99c0f2954f5cadd8639213392c94772b9a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.225911/kopia-20240412.0.225911-linux-arm.tar.gz"
    sha256 "38016043826a8638d03c969bedcc6bfc6e3bd7f662bc8653bfbac2aad349e54f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240412.0.225911/kopia-20240412.0.225911-linux-arm64.tar.gz"
    sha256 "7aab9931c9bcf4ec504de4aeeb38e62b9e80bc538d3880066aa98a4a0a55b3b7"
  end

  def install
    bin.install "kopia"
  end
end

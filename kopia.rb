# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241116.0.71650"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.71650/kopia-20241116.0.71650-macOS-x64.tar.gz"
    sha256 "a22dc9b5438cbf286d2b58ddc807d1a5293e43c8ce9da1333c266f3dd5fa9e27"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.71650/kopia-20241116.0.71650-macOS-arm64.tar.gz"
    sha256 "89f5e70897bf20d1d2ce8013f7b4c723bd44f1041f70bebd63f3d9f44eb51cb9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.71650/kopia-20241116.0.71650-linux-x64.tar.gz"
    sha256 "bb670c923e052a2d1f4482d8789eaa3fa43a37e51dd5f2c2dd8eb63af0332511"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.71650/kopia-20241116.0.71650-linux-arm.tar.gz"
    sha256 "cac559a9e0cbfc02188d40830be332570995f66b8f3623d4e4bc2d370ad92937"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241116.0.71650/kopia-20241116.0.71650-linux-arm64.tar.gz"
    sha256 "5fa1d8c43c7b675fa5adc170c49cba5ba66b5671226f2fe34a3d33fd0c6ae1cd"
  end

  def install
    bin.install "kopia"
  end
end

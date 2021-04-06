# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.84224"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84224/kopia-20210406.0.84224-macOS-x64.tar.gz"
    sha256 "26705ba76b9cfd012e00e6dbf309227fa97c2846aa895caf432cef69fa070ded"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84224/kopia-20210406.0.84224-macOS-arm64.tar.gz"
    sha256 "6b356f5655b9e211112059baa65df2fa0bb820ecbeeedec87de50a87750e3f8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84224/kopia-20210406.0.84224-linux-x64.tar.gz"
    sha256 "0084d9ea75c585f4b1f861cbff42cc0aaf31b3e04a4dd50c6c5fd152ef41b68d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84224/kopia-20210406.0.84224-linux-arm.tar.gz"
    sha256 "c08423e722e4dbd6b4cb9509ac9f79cb4c922b2a99079216c7e981daf6f2afb0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.84224/kopia-20210406.0.84224-linux-arm64.tar.gz"
    sha256 "2e9cb23d595f32fc6f2904e27a54e8342d5a7bb9bbd1ae5e083bb8a9af612201"
  end

  def install
    bin.install "kopia"
  end
end

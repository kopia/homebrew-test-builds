# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240715.0.135055"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.135055/kopia-20240715.0.135055-macOS-x64.tar.gz"
    sha256 "1fa8e56d8d077622469da8dc56aed9d3d3f6d7c4f5b9547c8a243be46ddbdedd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.135055/kopia-20240715.0.135055-macOS-arm64.tar.gz"
    sha256 "f2c729cd22ecfd1fbbac846c9898a88fbc63fd6ef24024833dad477fd5a25727"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.135055/kopia-20240715.0.135055-linux-x64.tar.gz"
    sha256 "cfec545da7aab31b6ce008dbeef17e3b0a590a7865fe7277318009c5aaa31c19"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.135055/kopia-20240715.0.135055-linux-arm.tar.gz"
    sha256 "5edd768a6dd6021d7821c789d4427ce396bd78f7684d681c7da7251e23c2601b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240715.0.135055/kopia-20240715.0.135055-linux-arm64.tar.gz"
    sha256 "70212789a433b8c5548a5126d1ef316be15c005b7e30ef1ea1740d5284602ab3"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230919.0.203945"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.203945/kopia-20230919.0.203945-macOS-x64.tar.gz"
    sha256 "3861eaaf002b6bf8092fdb9d35779f20c586282ecc67f02b84bf50ce81a1b3d3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.203945/kopia-20230919.0.203945-macOS-arm64.tar.gz"
    sha256 "708b612b20decdda1dcbbcd2a26b055d824bcb7ecc68f5a72b4f1fdfaba7276f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.203945/kopia-20230919.0.203945-linux-x64.tar.gz"
    sha256 "c3bf6935ab86bb0cb53e0abeb982c9d0f3dc35e0803330a9fae9ddc5ebbe6f22"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.203945/kopia-20230919.0.203945-linux-arm.tar.gz"
    sha256 "c8077f56f3ac03043b8a3ca9cf631e8f8d8124d6acb87e50375d38502e76b1d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230919.0.203945/kopia-20230919.0.203945-linux-arm64.tar.gz"
    sha256 "162967ed0dead489b970b555cab9d32298c2026a84c68ffd7c249c605f19733c"
  end

  def install
    bin.install "kopia"
  end
end

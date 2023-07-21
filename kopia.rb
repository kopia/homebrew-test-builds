# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230720.0.194400"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.194400/kopia-20230720.0.194400-macOS-x64.tar.gz"
    sha256 "f1633d37bca1e61ca7542f0ab7808be093a7bb92df8e44edfc94497246b06864"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.194400/kopia-20230720.0.194400-macOS-arm64.tar.gz"
    sha256 "8bf733ff6473b822ccafe350cb00a32509cba07c1adfb3e4f59d2b37ad775879"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.194400/kopia-20230720.0.194400-linux-x64.tar.gz"
    sha256 "30f19e58e08f8b2458581ac50e1f5e2e14639c26069cfdef930e2a0554aac1fd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.194400/kopia-20230720.0.194400-linux-arm.tar.gz"
    sha256 "68e576b9f7fe81c6c5634d8eef19bb9fc815bbefad637f0348db30fd8fc7b320"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.194400/kopia-20230720.0.194400-linux-arm64.tar.gz"
    sha256 "c7ee3508c6919581a821c31b6b6af5c4eda6ff90a08ee57068a74b33c46be37f"
  end

  def install
    bin.install "kopia"
  end
end

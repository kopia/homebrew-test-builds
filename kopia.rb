# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240419.0.155045"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.155045/kopia-20240419.0.155045-macOS-x64.tar.gz"
    sha256 "255c1e071442785207cdc0f51c5c0ce5c0e16524acbe85cf68fc510711c48ec4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.155045/kopia-20240419.0.155045-macOS-arm64.tar.gz"
    sha256 "479291a2bf18fc6bfad89f4abcd831e06170ec0fd73f88d50182018182a27ff9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.155045/kopia-20240419.0.155045-linux-x64.tar.gz"
    sha256 "14d583b7ba8a32b0ab9bf1110854e5e0d6a9e0cb9d3bd1ca9f7b4ca287cd075e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.155045/kopia-20240419.0.155045-linux-arm.tar.gz"
    sha256 "c9aeefa0df620dd8d90f52d231f287b80d6f51681c4f99f7c50565106f612a6a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240419.0.155045/kopia-20240419.0.155045-linux-arm64.tar.gz"
    sha256 "f728705afa87ef5f36b998a839618531d6ddca88ab1732f85b867a80185ed12b"
  end

  def install
    bin.install "kopia"
  end
end

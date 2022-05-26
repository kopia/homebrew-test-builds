# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220526.0.213216"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.213216/kopia-20220526.0.213216-macOS-x64.tar.gz"
    sha256 "fd1300f7511ef2d159698e61253fa5495178cfd657b0f52bb60e332765258b0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.213216/kopia-20220526.0.213216-macOS-arm64.tar.gz"
    sha256 "9cf193183fa8dc6f78b639cbd197776f0a119fdc6756e3d31dc13a5c490dd1e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.213216/kopia-20220526.0.213216-linux-x64.tar.gz"
    sha256 "31b739a41df17564f520fb0e76e1573276a9dcbc166804cd4fa2924e7e344a09"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.213216/kopia-20220526.0.213216-linux-arm.tar.gz"
    sha256 "50ec5d56496da261b83f7de997c0860559fa6e3cef2112fcdd984c47e825fc4e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220526.0.213216/kopia-20220526.0.213216-linux-arm64.tar.gz"
    sha256 "11316bf26436be3c072740f17e7f64ffc5daa0836e221d4842d8b1e6faee9b5a"
  end

  def install
    bin.install "kopia"
  end
end

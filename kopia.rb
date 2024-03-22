# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240322.0.152911"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.152911/kopia-20240322.0.152911-macOS-x64.tar.gz"
    sha256 "d4c461bb1eed2a4f677f3c475c0e9fb25626853240899fda57bdc8f116f1925a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.152911/kopia-20240322.0.152911-macOS-arm64.tar.gz"
    sha256 "6616cca2d0af765ec116535f847ea581ffd1347bd812e457949b53da8f8b23eb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.152911/kopia-20240322.0.152911-linux-x64.tar.gz"
    sha256 "1c10cc60403bac0890d4180c04b5c4a414876f746323f0690a8a427af729716b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.152911/kopia-20240322.0.152911-linux-arm.tar.gz"
    sha256 "15052df6be74e0320c358165d6f12e5dfd34036176a3319fad6fe49a30846b4b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240322.0.152911/kopia-20240322.0.152911-linux-arm64.tar.gz"
    sha256 "65fa024f88604445c6516119085138d1ae57f2677041bf22673c70de27cab0f3"
  end

  def install
    bin.install "kopia"
  end
end

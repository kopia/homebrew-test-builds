# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220819.0.154659"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.154659/kopia-20220819.0.154659-macOS-x64.tar.gz"
    sha256 "2ca05c83fde2f25e976ae09f396d60ed522b58ac046b59fc5672f7ffb3eeb450"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.154659/kopia-20220819.0.154659-macOS-arm64.tar.gz"
    sha256 "3d1eb9a6dc724a29ea61fd2461c76f34f7551a4be48e0e7049d60b87b87d9c34"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.154659/kopia-20220819.0.154659-linux-x64.tar.gz"
    sha256 "745e468f5a4313ccf31f7f8c0eabda1a95b653b54180738d912a8521def01889"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.154659/kopia-20220819.0.154659-linux-arm.tar.gz"
    sha256 "ac2f4c3218c4e1766e93f33a0142f393ec8042e72bb706057872cfb2206bf3a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.154659/kopia-20220819.0.154659-linux-arm64.tar.gz"
    sha256 "0adb0b22063fa9ca4977e1569e1a7a2442a82ff8cd00748f695e80a520cb3862"
  end

  def install
    bin.install "kopia"
  end
end

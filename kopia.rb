# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.185747"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185747/kopia-20210412.0.185747-macOS-x64.tar.gz"
    sha256 "e3dbe8f7a814f84155c480c6fd361328c6f5c6ea4af6ff2f0780e6c3e802feee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185747/kopia-20210412.0.185747-macOS-arm64.tar.gz"
    sha256 "b2fa7ca31feb4d2f63c6c42eae25c4ea4fe46aad1b9231ab40a459142a1e4580"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185747/kopia-20210412.0.185747-linux-x64.tar.gz"
    sha256 "d0b30bcaee34125f6ac76a61d059f38dd387b934ed18171b9eaf4c595326fee6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185747/kopia-20210412.0.185747-linux-arm.tar.gz"
    sha256 "c853d130e8f56345fd8b8db07b57d415006e5fd55dfb093ab4f666632ae9b26c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.185747/kopia-20210412.0.185747-linux-arm64.tar.gz"
    sha256 "a8c13e420d0b69d74f1ef7ce2e61d3e05899c3c59d1ff7da4a01d7446828e29b"
  end

  def install
    bin.install "kopia"
  end
end

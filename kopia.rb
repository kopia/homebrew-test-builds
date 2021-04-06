# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.91123"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.91123/kopia-20210406.0.91123-macOS-x64.tar.gz"
    sha256 "8caed32d08f211086e2c345710886fb3f60aaf71b3a7ac568d09b0e50f3153e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.91123/kopia-20210406.0.91123-macOS-arm64.tar.gz"
    sha256 "5f022b7a4868d1f12f2c7ee712d65e546b0d0ddaf1792ec5bb1b8613f6d2cb73"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.91123/kopia-20210406.0.91123-linux-x64.tar.gz"
    sha256 "447e98bdfdf2ac42403f9691b081fd9f8592ac8c10cbeb7fe636d2e9f071e263"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.91123/kopia-20210406.0.91123-linux-arm.tar.gz"
    sha256 "2c9c6cd25d380f94ae5f4632bd46cb1579cfc9149f286ece4d287e2ecf7de272"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.91123/kopia-20210406.0.91123-linux-arm64.tar.gz"
    sha256 "806e73978d8f35c80b763b100fd0bc1f1df2b9eb9a0a005eefbb4dbe390d2655"
  end

  def install
    bin.install "kopia"
  end
end

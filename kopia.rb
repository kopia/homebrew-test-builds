# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250214.0.72256"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.72256/kopia-20250214.0.72256-macOS-x64.tar.gz"
    sha256 "3c5fbd1fe59bf43224795f6aced7ba6455f5113950eabd8ea02e2e232e9a365d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.72256/kopia-20250214.0.72256-macOS-arm64.tar.gz"
    sha256 "63ec27e8c7eab0cc51010c1c1cb9f6ef5e79b5b15d70a0af7b1fd5f52e4ed6cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.72256/kopia-20250214.0.72256-linux-x64.tar.gz"
    sha256 "091a703f9c0f072464d3b7f4cb7572ee931c30cf8fd46e87298b22a4ca88af19"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.72256/kopia-20250214.0.72256-linux-arm.tar.gz"
    sha256 "581a1f1f3429f94a2a8051aa79c7b486a8d5b8f75ac771aaa3c14f16b2383acc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250214.0.72256/kopia-20250214.0.72256-linux-arm64.tar.gz"
    sha256 "f64f229a3b46be74aa880bc7d3a8378ee684246836b01830a26b20457397a67b"
  end

  def install
    bin.install "kopia"
  end
end

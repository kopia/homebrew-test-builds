# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.165630"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.165630/kopia-20220306.0.165630-macOS-x64.tar.gz"
    sha256 "45864119901dca753cd100e5d82bd9bfc1dd8bca9b3c70256601c58a1edcd79c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.165630/kopia-20220306.0.165630-macOS-arm64.tar.gz"
    sha256 "0ba52a97569acc022498d523bcb28bee5665dc8583563f35f8d88130b3e90683"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.165630/kopia-20220306.0.165630-linux-x64.tar.gz"
    sha256 "7e74c6a5c003f2a7c9ed726e0bcee0d96ad96449af28d9910c6831a4779072d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.165630/kopia-20220306.0.165630-linux-arm.tar.gz"
    sha256 "5ad368f5e46c837986077c02692fa98b10c55451875109c0c5ea75d18d9d405e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.165630/kopia-20220306.0.165630-linux-arm64.tar.gz"
    sha256 "dffbc3d91a058fe1d89ceba79afb8f38a3901d77be4cc4c9fb36b4643bc94aff"
  end

  def install
    bin.install "kopia"
  end
end

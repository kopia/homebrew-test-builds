# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220326.0.142808"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.142808/kopia-20220326.0.142808-macOS-x64.tar.gz"
    sha256 "b455ad1c34612348e606caf50f29e9c26a660257577ae22974129a767be13ba8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.142808/kopia-20220326.0.142808-macOS-arm64.tar.gz"
    sha256 "cc89a9551e9ed56fe22d807f21358f6ea4baa697f1c30bff08a1cf7ccb2dad1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.142808/kopia-20220326.0.142808-linux-x64.tar.gz"
    sha256 "52f85acf3c649046851929a16673f5c7607557fc169df31dcbd7edf1dcf7151a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.142808/kopia-20220326.0.142808-linux-arm.tar.gz"
    sha256 "6e49184c747d3047f17c06a7edb4a7caafea0ffb4dd52ab93af7fe1bc3844574"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.142808/kopia-20220326.0.142808-linux-arm64.tar.gz"
    sha256 "0523075d9bb51dc82d5f65613c60a5d562c955a1a52393d7e644c8657550f697"
  end

  def install
    bin.install "kopia"
  end
end

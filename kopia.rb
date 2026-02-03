# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.72124"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.72124/kopia-20260203.0.72124-macOS-x64.tar.gz"
    sha256 "881957a1a44720c671a59bd7e2a0aab1c3fde9b8dbf311097d9f98634913585a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.72124/kopia-20260203.0.72124-macOS-arm64.tar.gz"
    sha256 "4bad7588f8481aec5e71c79ba5a5663d44fe732753b3bcf8ac0f62b6bd241db7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.72124/kopia-20260203.0.72124-linux-x64.tar.gz"
    sha256 "622fb34db1bbcd6e4af849fcb1f1ad03868eb604abeea1721d04504462dd2fef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.72124/kopia-20260203.0.72124-linux-arm.tar.gz"
    sha256 "8782e70913882982a364bdebcfe575732c33d4cd19802b07a85f555a71538f01"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.72124/kopia-20260203.0.72124-linux-arm64.tar.gz"
    sha256 "bb4e9d3811ea2059147c135445dd5299449a8f97227df5183a6d3406f23f1329"
  end

  def install
    bin.install "kopia"
  end
end

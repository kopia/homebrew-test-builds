# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240719.0.74426"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.74426/kopia-20240719.0.74426-macOS-x64.tar.gz"
    sha256 "47b508ed1821209d3e2bd16abd32bcb7817c8c08d962a5147885989ec0601638"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.74426/kopia-20240719.0.74426-macOS-arm64.tar.gz"
    sha256 "199c5130cfa846453408e8446b7953b6714491f3c6eb987fa24b06591a680677"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.74426/kopia-20240719.0.74426-linux-x64.tar.gz"
    sha256 "9197070d2b04a0b71171b0a96395a8464521d8bc6f6ac4b43f0b1a15611479e3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.74426/kopia-20240719.0.74426-linux-arm.tar.gz"
    sha256 "8c3d82008fe8b5f370b712f81168c0c373d6a8cabf8377537659f6ef6022aa9a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240719.0.74426/kopia-20240719.0.74426-linux-arm64.tar.gz"
    sha256 "25e212dfa78bc1811e288f1ad97a4d978733228da04c60faa3f5c5f12e05ddeb"
  end

  def install
    bin.install "kopia"
  end
end

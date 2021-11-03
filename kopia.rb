# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.75657"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75657/kopia-20211103.0.75657-macOS-x64.tar.gz"
    sha256 "dd1e04919f354bd6fd0c00bb6bd672a1ded4594b4a20351a5d2f198f419da0cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75657/kopia-20211103.0.75657-macOS-arm64.tar.gz"
    sha256 "a213a95e36f749950118f5620687dd185e9c1727e36be90cc3d0ceb4694a0ef3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75657/kopia-20211103.0.75657-linux-x64.tar.gz"
    sha256 "95788832e5aee7bec9ed007eb4cc8484867b37704cc7c508ebdb10f1a85ab004"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75657/kopia-20211103.0.75657-linux-arm.tar.gz"
    sha256 "428544678b939acff14aa90a07a6ed2151d75c3d3d5d6c95eeed852a455d5f19"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.75657/kopia-20211103.0.75657-linux-arm64.tar.gz"
    sha256 "09ba07a2f98ada2f39ec412b89c85f5d18a67cad2ed5fdf491c5e9a1e79e0b43"
  end

  def install
    bin.install "kopia"
  end
end

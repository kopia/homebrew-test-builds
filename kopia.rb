# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240918.0.132232"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240918.0.132232/kopia-20240918.0.132232-macOS-x64.tar.gz"
    sha256 "74a7a5c20445cdb50ef3b5583dd5fc1ae9a9d2a450b46eced0c12dd5dda71622"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240918.0.132232/kopia-20240918.0.132232-macOS-arm64.tar.gz"
    sha256 "35ba0f1aecc4b9b3c2ba98752223f1a1328497fd6656876ac609f459954ca380"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240918.0.132232/kopia-20240918.0.132232-linux-x64.tar.gz"
    sha256 "a44ac6a294bad45c6c48d8e57b903e50199afc9802049772704771f3cfb27be8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240918.0.132232/kopia-20240918.0.132232-linux-arm.tar.gz"
    sha256 "a07d6e13894ea009fceb9ed5738877596c84acaff99cd630d48bf118d5079fd0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240918.0.132232/kopia-20240918.0.132232-linux-arm64.tar.gz"
    sha256 "fb5c2faad6d3876d92d0b6da0f170db64a04a7f1b167f41a62d0afd8a8cb0b4e"
  end

  def install
    bin.install "kopia"
  end
end

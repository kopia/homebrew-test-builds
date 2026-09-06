# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260906.0.223409"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.223409/kopia-20260906.0.223409-macOS-x64.tar.gz"
    sha256 "32a7d74513f5177e73320281a6d89652b8ed20dc4a633c1a36c80f2905528e14"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.223409/kopia-20260906.0.223409-macOS-arm64.tar.gz"
    sha256 "bacc0acd9486dff87b3e5d1e64f7f90feb4c5415c6c5594c8010032075fc233a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.223409/kopia-20260906.0.223409-linux-x64.tar.gz"
    sha256 "9983f438c5417b54401b957d028dd8363c998d9bafea9fa65ab803d3ddd9d5f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.223409/kopia-20260906.0.223409-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.223409/kopia-20260906.0.223409-linux-arm64.tar.gz"
    sha256 "587e4890ea07902213576e9a00f5495e92abcc0c49d047766c7bf6581f7bc730"
  end

  def install
    bin.install "kopia"
  end
end

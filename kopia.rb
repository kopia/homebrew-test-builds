# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220221.0.202413"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.202413/kopia-20220221.0.202413-macOS-x64.tar.gz"
    sha256 "559ea0b39b3f78417e4a12f3cdddf91aedc8c8e1326dd21e1a749aeca9c17aa9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.202413/kopia-20220221.0.202413-macOS-arm64.tar.gz"
    sha256 "4f591e8552a65f9545fb7498dc36d75bca042e6d41df11ebc99b75ce0c8197d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.202413/kopia-20220221.0.202413-linux-x64.tar.gz"
    sha256 "a908b4479fc3c7543fb43e4f640c3d68c9b7f1cacd41704e32c9fe03f7af3474"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.202413/kopia-20220221.0.202413-linux-arm.tar.gz"
    sha256 "f667144a3508d90ab7c20241a83bbb67d8ce499da41e21da2d49e64077a7bb16"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.202413/kopia-20220221.0.202413-linux-arm64.tar.gz"
    sha256 "54d15dbf4649039fde07211afc957e2800928b3879018437a5af983ca5b5e6f3"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.193331"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193331/kopia-20220201.0.193331-macOS-x64.tar.gz"
    sha256 "b98d1755874e0ff9d52d6df79ef461f28cc13ebc114bddede3221710e4a4b7ee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193331/kopia-20220201.0.193331-macOS-arm64.tar.gz"
    sha256 "c073254400eb050d04aaec42a8182f15e4d5efc025bb65fb93a9399b4dfd8ab6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193331/kopia-20220201.0.193331-linux-x64.tar.gz"
    sha256 "eeb562d354c1a37780d049a5b431bf14a21045ce610a50261541da33e46f8d32"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193331/kopia-20220201.0.193331-linux-arm.tar.gz"
    sha256 "abc83de7b106a21dd52b8181ea43042879b3d973f9fcb129b1874792f1180331"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193331/kopia-20220201.0.193331-linux-arm64.tar.gz"
    sha256 "26c34c92c66678895f7103ef392a69a67dd48338f3588918d16d31f2d5a41da8"
  end

  def install
    bin.install "kopia"
  end
end

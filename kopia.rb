# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241119.0.64524"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.64524/kopia-20241119.0.64524-macOS-x64.tar.gz"
    sha256 "70386ecc57fc5308c32483497e9f3cbf9954cc563dca9bf21ec2d4155235548a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.64524/kopia-20241119.0.64524-macOS-arm64.tar.gz"
    sha256 "e7677a1413a4f05809bcad18352e63897f25aa19ecf5ac4208f84d27cae3f8bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.64524/kopia-20241119.0.64524-linux-x64.tar.gz"
    sha256 "0fbcebff4eb016a4c87e28dfad0fb4946852e062a3ed874e1f4fe2c697bc1bbe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.64524/kopia-20241119.0.64524-linux-arm.tar.gz"
    sha256 "f8b3ccf7b8c213da4db1542831a6be8019b61d69a546566bfe9612ec377c330c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241119.0.64524/kopia-20241119.0.64524-linux-arm64.tar.gz"
    sha256 "7aac2b21b8a3045390167b246d1499538bb1c5d7688df599e7386c2704473b6d"
  end

  def install
    bin.install "kopia"
  end
end

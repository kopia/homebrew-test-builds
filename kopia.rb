# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211118.0.74823"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211118.0.74823/kopia-20211118.0.74823-macOS-x64.tar.gz"
    sha256 "b637308b3f907f18e0ea9a3b1a0d824ef41e6a8f15b17a08388cf69bed06cbc6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211118.0.74823/kopia-20211118.0.74823-macOS-arm64.tar.gz"
    sha256 "b418a33eb8ca4fb0c48854386ddaf91a35913818d20c3702bb7730a3eeb60dd9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211118.0.74823/kopia-20211118.0.74823-linux-x64.tar.gz"
    sha256 "8163d66541f121838c0fb147d2aecc101959c0b6691789783a5603a3d0c00dcc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211118.0.74823/kopia-20211118.0.74823-linux-arm.tar.gz"
    sha256 "6b92605fec2edc3ed00fde78aa8290e9e2619d03d4e7546865e61b970ea4fe7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211118.0.74823/kopia-20211118.0.74823-linux-arm64.tar.gz"
    sha256 "d3600689914e69ed1fb6829110b679dcd7c4ac645b2a580b679f761c14fefaf3"
  end

  def install
    bin.install "kopia"
  end
end

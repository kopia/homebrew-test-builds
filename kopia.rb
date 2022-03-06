# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.153229"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.153229/kopia-20220306.0.153229-macOS-x64.tar.gz"
    sha256 "a07d3ccd0277b535ba6ac25090749b68d8a487df15ff11c6e50e0942fcf73b54"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.153229/kopia-20220306.0.153229-macOS-arm64.tar.gz"
    sha256 "23711745df612a3ebae6521f93f27ebb1d9197ab9e7b17979c2b2427983a21af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.153229/kopia-20220306.0.153229-linux-x64.tar.gz"
    sha256 "67d39bb1086f4f6d1a2d8be56ec662d59b59d69cc850c5b87248f06422c32c94"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.153229/kopia-20220306.0.153229-linux-arm.tar.gz"
    sha256 "d8f3fe7b484f758a23cae0449cde98de6ef912de358ee535614f98ec14d7e5c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.153229/kopia-20220306.0.153229-linux-arm64.tar.gz"
    sha256 "eb2b2c1e590186cea2d968b26011d89254370b9cd1579d24cacb6724b8cd1de2"
  end

  def install
    bin.install "kopia"
  end
end

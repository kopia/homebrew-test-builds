# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220704.0.154814"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.154814/kopia-20220704.0.154814-macOS-x64.tar.gz"
    sha256 "faaeae196323078846122f34eb8f6bb11eef3ee514e1dbb91c0e86584da51b79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.154814/kopia-20220704.0.154814-macOS-arm64.tar.gz"
    sha256 "f69e9961d13cb78140df9aea2946885046d5b1982d3b700b0dcb2ae8c0e3d802"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.154814/kopia-20220704.0.154814-linux-x64.tar.gz"
    sha256 "6d44ce36ea5990131073d088e3ef48005b3c370f3aacd97cff968ce34bf4347e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.154814/kopia-20220704.0.154814-linux-arm.tar.gz"
    sha256 "1c897c56cb112cd93ba0dc044f9dfab60e205d82d8fba7d5ae8b6a00072253af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220704.0.154814/kopia-20220704.0.154814-linux-arm64.tar.gz"
    sha256 "4a1ab7902fcd9a8236b6e44c288d32e60b2118994f21ad63ec1525426c475815"
  end

  def install
    bin.install "kopia"
  end
end

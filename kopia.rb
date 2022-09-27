# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220926.0.182935"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.182935/kopia-20220926.0.182935-macOS-x64.tar.gz"
    sha256 "295bbdad7d801b06178fd90fbfff050f144ac87e6ac74cfbc7f158f9d895ae62"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.182935/kopia-20220926.0.182935-macOS-arm64.tar.gz"
    sha256 "ea4732f77d9c9645e6f014732de8b80ece45f2b2bfebd6e17832c3aa0e446b9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.182935/kopia-20220926.0.182935-linux-x64.tar.gz"
    sha256 "b31bad57a9ca7fe6f77454df8736cba72b90f9d7a8ae6855139b904de95f898c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.182935/kopia-20220926.0.182935-linux-arm.tar.gz"
    sha256 "e49bc45605a84194f9f5fb648f40743a380fc4ed594c26a0ff0e294b42236077"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220926.0.182935/kopia-20220926.0.182935-linux-arm64.tar.gz"
    sha256 "4755aa5f9f92a1973b03da83192b9e9b236991b50c663a37fa9ecc40cb064b53"
  end

  def install
    bin.install "kopia"
  end
end

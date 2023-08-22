# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230821.0.175539"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.175539/kopia-20230821.0.175539-macOS-x64.tar.gz"
    sha256 "24fbb9fc5b9fff82331ac2596e4f59afb0626643cbf24263dbca9160b7eddd26"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.175539/kopia-20230821.0.175539-macOS-arm64.tar.gz"
    sha256 "20636d3ed3f119b4f9778fef3decf5b7ede1add2a782e30ae01bca97431ef44d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.175539/kopia-20230821.0.175539-linux-x64.tar.gz"
    sha256 "b2ed92bda8e7e67f97eb4f6327f708cf6b70cfb257a24bc4ef113cd00e7209a6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.175539/kopia-20230821.0.175539-linux-arm.tar.gz"
    sha256 "29a9c6685339f836c90c695e5f4bfa31368662b49352d260d563fb443a141528"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230821.0.175539/kopia-20230821.0.175539-linux-arm64.tar.gz"
    sha256 "4ff8d03b5f26510f33f2380f023a136f3e0df3a7dde811f262b54f5126c17be8"
  end

  def install
    bin.install "kopia"
  end
end

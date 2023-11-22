# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231122.0.222417"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231122.0.222417/kopia-20231122.0.222417-macOS-x64.tar.gz"
    sha256 "be91c49d2d79dfffafef87d704559f5b4973f995060a095762b66c954f51412c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231122.0.222417/kopia-20231122.0.222417-macOS-arm64.tar.gz"
    sha256 "3d499e1fec05fea8c18d237e2910a2ea629fa091aaa32f9a6e6ae549336a0fbb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231122.0.222417/kopia-20231122.0.222417-linux-x64.tar.gz"
    sha256 "2b43c18082738e49916ee9ceb4c1e6bc1dac0cbcf7e21fe437442cae26f4d2db"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231122.0.222417/kopia-20231122.0.222417-linux-arm.tar.gz"
    sha256 "a8cc918b5a7a9a8616faedae02cc7fd7f20d488fd7d24d3156971b5ed89334b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231122.0.222417/kopia-20231122.0.222417-linux-arm64.tar.gz"
    sha256 "8a7a0760dc7c3c293b31dab22233afc1d9d7cbd3618103a19678eed5ec2bde49"
  end

  def install
    bin.install "kopia"
  end
end

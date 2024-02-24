# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240223.0.204239"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240223.0.204239/kopia-20240223.0.204239-macOS-x64.tar.gz"
    sha256 "295555034b936a6822b9092c7307f76b12f91ed8e640a0d093e5722ead6f2a3c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240223.0.204239/kopia-20240223.0.204239-macOS-arm64.tar.gz"
    sha256 "c4b17cc2460183309717cae5d91e888fcb1980704dd7b562c4a77261aa086829"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240223.0.204239/kopia-20240223.0.204239-linux-x64.tar.gz"
    sha256 "a555edf3f5aec26c2e712c0d326f2f58084541b4ed35e79148e48fb228565547"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240223.0.204239/kopia-20240223.0.204239-linux-arm.tar.gz"
    sha256 "71b1c1d21c1bce7c1b5d51e8568764348be4ac6ab435c30ae42309614d8ec5b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240223.0.204239/kopia-20240223.0.204239-linux-arm64.tar.gz"
    sha256 "c629ee48c66d07e2cb40829d4f8431c279d7df83f992f7a30cefe362edaf3918"
  end

  def install
    bin.install "kopia"
  end
end

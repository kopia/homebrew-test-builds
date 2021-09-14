# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210913.0.223953"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210913.0.223953/kopia-20210913.0.223953-macOS-x64.tar.gz"
    sha256 "e5c691855aa2d8b9d627eaf432ee666cc84d3ec1b3a58ba061f5de93d08203bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210913.0.223953/kopia-20210913.0.223953-macOS-arm64.tar.gz"
    sha256 "585e3efb7b6e87fe36563b6dd5760635c135085891ee3f7705e9d36e03e8d960"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210913.0.223953/kopia-20210913.0.223953-linux-x64.tar.gz"
    sha256 "a69f62bf620f3a02a95a69cd5dfa7f14862a1d266622f851cb4b237fbecd7551"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210913.0.223953/kopia-20210913.0.223953-linux-arm.tar.gz"
    sha256 "125e2b951e3078ecc57cabce0c15ad5ef013f5888da1cbe6ebc6aec7d6ce4292"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210913.0.223953/kopia-20210913.0.223953-linux-arm64.tar.gz"
    sha256 "57ed8a9e8431f15f67871dd2a4f39c7971860448b8990b916535c6d5928848d3"
  end

  def install
    bin.install "kopia"
  end
end

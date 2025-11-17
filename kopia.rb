# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251117.0.70751"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.70751/kopia-20251117.0.70751-macOS-x64.tar.gz"
    sha256 "571c8ee4d190750e146987790b3bc19df98f69d078c888c9154dd749ce74cc19"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.70751/kopia-20251117.0.70751-macOS-arm64.tar.gz"
    sha256 "8419c4f2f9ec7b0cfa07a0ef86dc5749ce27e2224186824b9644686c2f001f83"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.70751/kopia-20251117.0.70751-linux-x64.tar.gz"
    sha256 "3b29f4f8a6342fca4a086e3896ab821b4cadef070832048d6eb79e52fbfdf625"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.70751/kopia-20251117.0.70751-linux-arm.tar.gz"
    sha256 "c0a129f9c5ed887ec98c2cd007dd5ab2178134f01597a26a19a2a753bb303dc4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.70751/kopia-20251117.0.70751-linux-arm64.tar.gz"
    sha256 "d7bf9980f616974f7708ed06ebe29c5ea2492a828fe06e0b7ba4257c71c9fe8b"
  end

  def install
    bin.install "kopia"
  end
end

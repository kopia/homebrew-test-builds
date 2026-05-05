# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260505.0.25120"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.25120/kopia-20260505.0.25120-macOS-x64.tar.gz"
    sha256 "714a100962fa970dd1edc446a74aeab39fd4aad9e5692c34674fb358ab7c9023"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.25120/kopia-20260505.0.25120-macOS-arm64.tar.gz"
    sha256 "221e1020c907759e953033a364820fae74e14bb800c1af389d2c8c32aa03aa82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.25120/kopia-20260505.0.25120-linux-x64.tar.gz"
    sha256 "189f82bbb00d8fef47400a9bc7852d67d6273b1bd99bb0206a51c425e59d9154"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.25120/kopia-20260505.0.25120-linux-arm.tar.gz"
    sha256 "6ef15fe07d1fa9a188b122ef78f830a99576dcd965ca9731911f4421387d0194"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260505.0.25120/kopia-20260505.0.25120-linux-arm64.tar.gz"
    sha256 "b3ad2dea3098a8853ad90018aa132843eaa8a22161b52a492e041305b675dd8d"
  end

  def install
    bin.install "kopia"
  end
end

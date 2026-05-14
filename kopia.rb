# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260514.0.53530"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.53530/kopia-20260514.0.53530-macOS-x64.tar.gz"
    sha256 "3c491d12ddcde8afb37a296b7679ba58c5dbb11e5d8eaca24bec038acf6c2001"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.53530/kopia-20260514.0.53530-macOS-arm64.tar.gz"
    sha256 "b83b5578c32953ff9a88d5a8f088b8d08895e188e3c5f53eb38990369b2c2d4b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.53530/kopia-20260514.0.53530-linux-x64.tar.gz"
    sha256 "e9a3befd10ee9063979f03323df611e2c7a5d224f7e9013f787d6e2ea2aa58d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.53530/kopia-20260514.0.53530-linux-arm.tar.gz"
    sha256 "eb96f9d66a14323618bb75da57e42f56249ff4ea076d7011cde8b7a72a094d57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.53530/kopia-20260514.0.53530-linux-arm64.tar.gz"
    sha256 "9631dfb1cbb7fd472fd09d146b2d4df2eed1e3be22919873624cd269c94a3420"
  end

  def install
    bin.install "kopia"
  end
end

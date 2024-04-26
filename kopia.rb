# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240425.0.231015"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.231015/kopia-20240425.0.231015-macOS-x64.tar.gz"
    sha256 "a5b6d029eccf5a5aa6a4b0aaa2124787b278b7518afd91a5261536399fa2595e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.231015/kopia-20240425.0.231015-macOS-arm64.tar.gz"
    sha256 "8ae9db448a59855bcd6d122e8351617b3779630b0f7c97b29216a5973e77c48e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.231015/kopia-20240425.0.231015-linux-x64.tar.gz"
    sha256 "4db675789568ab9e1afa162b09dfa2d5e5d5b56ff23e14f5edf3d187f486b86c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.231015/kopia-20240425.0.231015-linux-arm.tar.gz"
    sha256 "8e6ed37d19506e003718a765199dfc958b1564eb4b4f81b3e47620b143d625f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240425.0.231015/kopia-20240425.0.231015-linux-arm64.tar.gz"
    sha256 "eacf970e3b48086516af5c3b1fe093f5c2923722cbad9cee5d0103d0c1fa08ce"
  end

  def install
    bin.install "kopia"
  end
end

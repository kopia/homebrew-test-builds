# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220513.0.335"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220513.0.335/kopia-20220513.0.335-macOS-x64.tar.gz"
    sha256 "d9aae385fc552a701d77697ff608ac7bada508d5889c24cb9a286a009d9335ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220513.0.335/kopia-20220513.0.335-macOS-arm64.tar.gz"
    sha256 "1ace39639c9501ff3f5e44ca04f341c551f819287c02c0c87b0e762da941b13a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220513.0.335/kopia-20220513.0.335-linux-x64.tar.gz"
    sha256 "03631d1c337d337c9d9a7889b5f842e0ffe3565fa6b1eafaade7dde7aacddb08"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220513.0.335/kopia-20220513.0.335-linux-arm.tar.gz"
    sha256 "f3a6672bfca23ce15a12ba385662150d2527cd9966932e6989fbed3684909591"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220513.0.335/kopia-20220513.0.335-linux-arm64.tar.gz"
    sha256 "1e411491fbcbd1cae57faa83fa9c15046b2fd14c265ea28925e3b82f7910c1ed"
  end

  def install
    bin.install "kopia"
  end
end

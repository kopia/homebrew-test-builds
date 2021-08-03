# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210802.0.213615"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.213615/kopia-20210802.0.213615-macOS-x64.tar.gz"
    sha256 "0fa639db7718d15b42ba51953ed8c2a24bbc470eb8271071d03338a4d7d6ab44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.213615/kopia-20210802.0.213615-macOS-arm64.tar.gz"
    sha256 "68ea1662286f71ee37218906a72b92416851e2428520d85c21bf52f82f5acd75"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.213615/kopia-20210802.0.213615-linux-x64.tar.gz"
    sha256 "588292b7bc18b8eb92a9012894365d4beccf57b3d7f8c72e55e460bb9ccc696c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.213615/kopia-20210802.0.213615-linux-arm.tar.gz"
    sha256 "8bcb355988e084c6d17c1558c1285d11f793d3126b075fee25aa8042f2af0cdc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.213615/kopia-20210802.0.213615-linux-arm64.tar.gz"
    sha256 "c54379600ed3890d5a694a341f19db29e721e735764a3b50e1e5c94a836c64b2"
  end

  def install
    bin.install "kopia"
  end
end

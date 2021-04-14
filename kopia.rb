# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210414.0.74545"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210414.0.74545/kopia-20210414.0.74545-macOS-x64.tar.gz"
    sha256 "fb3866426eddb5a4b97c946717b38ae9998f6a232c7a91aad948f26cd7136486"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210414.0.74545/kopia-20210414.0.74545-macOS-arm64.tar.gz"
    sha256 "08eb3a464a78b801e6f1558c47470500d4c0f029b22e6eb7206a983a7646e8d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210414.0.74545/kopia-20210414.0.74545-linux-x64.tar.gz"
    sha256 "50e0822a1f0456b5f4b1bee5b6ece077b8b9d0cbe2118ee3897f96668815cf3a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210414.0.74545/kopia-20210414.0.74545-linux-arm.tar.gz"
    sha256 "fb1359805c9a2087d867f65ff27f7619da1ac3b2f41733220d06e62245603c9b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210414.0.74545/kopia-20210414.0.74545-linux-arm64.tar.gz"
    sha256 "4aaf4887b80502bdcc7e8d5961c931c960c94a83ea9f1892f97b26fe5733e620"
  end

  def install
    bin.install "kopia"
  end
end

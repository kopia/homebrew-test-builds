# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250516.0.45922"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250516.0.45922/kopia-20250516.0.45922-macOS-x64.tar.gz"
    sha256 "b2a83ce7f8cf32ee1d23fe45c263c9a589d923e64b76844c1c64bb135c0ad2ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250516.0.45922/kopia-20250516.0.45922-macOS-arm64.tar.gz"
    sha256 "6a7387df37f38da0b3c144e7bf78372b6d1bf6cd0778f10b25bb809d76f748cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250516.0.45922/kopia-20250516.0.45922-linux-x64.tar.gz"
    sha256 "ec0632f601a8852cf676fa7b9f0d36a7ce9020a3f9ff354d6f33ee22a8a23e80"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250516.0.45922/kopia-20250516.0.45922-linux-arm.tar.gz"
    sha256 "5ba0937e30a908827bb7d62bab7edde9e784a78513c74a3d79cce14fb29867f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250516.0.45922/kopia-20250516.0.45922-linux-arm64.tar.gz"
    sha256 "6e54b9cc320d27dd7c77ed37b5b0596d55a8f2b87e7809b26c7fd2eb4c75febe"
  end

  def install
    bin.install "kopia"
  end
end

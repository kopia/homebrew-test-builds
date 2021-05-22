# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210522.0.53527"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.53527/kopia-20210522.0.53527-macOS-x64.tar.gz"
    sha256 "d5bf1f6dbca55d81d2213ee15c4d38aa1c22d0dbc538ff5db3be71ddb7b9cbd5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.53527/kopia-20210522.0.53527-macOS-arm64.tar.gz"
    sha256 "496f81eb07cd77d6a60b8536f7c5fa664622519114a790c0f53cdb04e83073c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.53527/kopia-20210522.0.53527-linux-x64.tar.gz"
    sha256 "5c4a85cf3b8a21ee5c2630a29a0834dfdf06354f3d2c72bec0742896446cb1c5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.53527/kopia-20210522.0.53527-linux-arm.tar.gz"
    sha256 "8e067f821a5c784774920aa6417201629b1ce01fa9fe08a5850dc860a9e9872f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210522.0.53527/kopia-20210522.0.53527-linux-arm64.tar.gz"
    sha256 "6dfd074dbcfc2f26e95cefa7f4df47a0567ed95ad6d4d0c73fff7372d2c7f1f2"
  end

  def install
    bin.install "kopia"
  end
end

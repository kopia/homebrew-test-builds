# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.185810"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.185810/kopia-20210406.0.185810-macOS-x64.tar.gz"
    sha256 "44d5868fc5dc832482e8555a6b6d94df416ed6054ab2059380ca1ec245fcb3ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.185810/kopia-20210406.0.185810-macOS-arm64.tar.gz"
    sha256 "3231ae3a11b91e44aab3fe14ec36731cf8fcbf92d0e89a9a9171aeecadfc10f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.185810/kopia-20210406.0.185810-linux-x64.tar.gz"
    sha256 "36aeffacf6a8a6e516c25ea0b10d382d8730ea4e9fbfc09e19b7a82474fdee4e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.185810/kopia-20210406.0.185810-linux-arm.tar.gz"
    sha256 "354f4c2aa9fcb91d6a74505591884e633a06378d4213762eafba59be566208b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.185810/kopia-20210406.0.185810-linux-arm64.tar.gz"
    sha256 "3d2eaec87d3a1d1ec14b5b1e2f4fd646d3d5b8fcf7343f7271a60e7d2b535aa2"
  end

  def install
    bin.install "kopia"
  end
end

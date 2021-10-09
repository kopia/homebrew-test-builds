# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211009.0.123836"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.123836/kopia-20211009.0.123836-macOS-x64.tar.gz"
    sha256 "6600aa6034e8ac90de2671f493918aacc972f105b032da0f8441d308a757aa4e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.123836/kopia-20211009.0.123836-macOS-arm64.tar.gz"
    sha256 "ca06e95a01f75f77cfa3ede4c4870b6071cf5cb3349b728c8f38aa6da539639b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.123836/kopia-20211009.0.123836-linux-x64.tar.gz"
    sha256 "40d8173a85ae3b5ded06be2460005319b6460afa3cfb6b6f0708a7cd6b668b48"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.123836/kopia-20211009.0.123836-linux-arm.tar.gz"
    sha256 "85217714362ad816d31815bcca154396fd98c2a1a3d495662581b07e3c3605a0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211009.0.123836/kopia-20211009.0.123836-linux-arm64.tar.gz"
    sha256 "d0752d8f034750277623f363010cb9deff9c6bfb1b311e10fc9bab0423f20c68"
  end

  def install
    bin.install "kopia"
  end
end

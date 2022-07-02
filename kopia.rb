# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220702.0.135501"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.135501/kopia-20220702.0.135501-macOS-x64.tar.gz"
    sha256 "a91090e58382339e29e2838d1d18a5878ed0982142b33e22ded02ff76bb18d63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.135501/kopia-20220702.0.135501-macOS-arm64.tar.gz"
    sha256 "832222f00e12834fe1ce01a6f256d2a99fb7a85a39677d3abd657976a840df13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.135501/kopia-20220702.0.135501-linux-x64.tar.gz"
    sha256 "6fb8bc37351cbaf9cef23bc148c86fa7cb83ef82bc26a230a0622ada597177f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.135501/kopia-20220702.0.135501-linux-arm.tar.gz"
    sha256 "b0c78009a8ebeca6d355b22d2614b1c8fb7bcfe947e759fa2472bda259cc7327"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220702.0.135501/kopia-20220702.0.135501-linux-arm64.tar.gz"
    sha256 "927f98223136e45fe995276029a31a82c2910b67f9806f4ff28df8919f3d491b"
  end

  def install
    bin.install "kopia"
  end
end

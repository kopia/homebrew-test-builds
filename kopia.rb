# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260203.0.60448"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.60448/kopia-20260203.0.60448-macOS-x64.tar.gz"
    sha256 "32475e8aba4b5b50521a07c3c32a7ac4b61bb71774e06c1bb3a06db60b60a0b2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.60448/kopia-20260203.0.60448-macOS-arm64.tar.gz"
    sha256 "237fb60a61bdd2389d7220a46a0b01c8168fea2faa65236fcfaa27c7726004c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.60448/kopia-20260203.0.60448-linux-x64.tar.gz"
    sha256 "35867a23e47c96866b062dc7b940e73571804622919b87f3d9c74655d1770cf7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.60448/kopia-20260203.0.60448-linux-arm.tar.gz"
    sha256 "83c8f0dcc56abf6237406bce66fff5e6195b4154050e030aa6c98326140dfedf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260203.0.60448/kopia-20260203.0.60448-linux-arm64.tar.gz"
    sha256 "54da8bf705cff7dbf9809fb7c1dff5a514eab10b0530f09b968e6848725d7374"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240302.0.223408"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240302.0.223408/kopia-20240302.0.223408-macOS-x64.tar.gz"
    sha256 "76b341e8656591ec9e990a7d12271625683c071cdfe4fad29709af2304f9cc3e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240302.0.223408/kopia-20240302.0.223408-macOS-arm64.tar.gz"
    sha256 "4192f5f085854666b2ef4f027b956cae712f2cb850b7da4f1db012ea6424bb6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240302.0.223408/kopia-20240302.0.223408-linux-x64.tar.gz"
    sha256 "25de1bc78a09aa82a3247737349e0e2beb3e11b3d0ca912ad8226dc1e6b2a48a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240302.0.223408/kopia-20240302.0.223408-linux-arm.tar.gz"
    sha256 "95dde090ab1b359136353346061beebdb56bb7314edee4aa683e3087e7ca934e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240302.0.223408/kopia-20240302.0.223408-linux-arm64.tar.gz"
    sha256 "ec1b0e19dfdcc565e8961786187f9f08d8f1ce6ba9cec8233ea76b717dd98645"
  end

  def install
    bin.install "kopia"
  end
end

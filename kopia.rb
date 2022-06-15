# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220614.0.221142"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.221142/kopia-20220614.0.221142-macOS-x64.tar.gz"
    sha256 "8a63f3c37584f0ff177883498f3ce09bffe3b91f4d962c5fce20fdcc6f73a390"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.221142/kopia-20220614.0.221142-macOS-arm64.tar.gz"
    sha256 "648c97aeeeda6e27a0d864de3319db5e869bdc0d883a9125936db85e5a2437b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.221142/kopia-20220614.0.221142-linux-x64.tar.gz"
    sha256 "11689a65fe8fabaa39783fe3fc79aac984d72c9890ba71e80150e83fbe4f5927"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.221142/kopia-20220614.0.221142-linux-arm.tar.gz"
    sha256 "9acfd16833e05a94d0a48440fdf0bab1a5db79266198d9ce804171eb96e77ea2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220614.0.221142/kopia-20220614.0.221142-linux-arm64.tar.gz"
    sha256 "ddc206a8db3d1473069feec0bdefd06d902cf4008f0f50096793e2e0bce0ec5d"
  end

  def install
    bin.install "kopia"
  end
end

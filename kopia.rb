# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220706.0.55427"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.55427/kopia-20220706.0.55427-macOS-x64.tar.gz"
    sha256 "45a4a0a8566067c3b1b4d391974f8bc6340ad9371cfecd6f09888176cafd8c1f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.55427/kopia-20220706.0.55427-macOS-arm64.tar.gz"
    sha256 "1cae3d5ab89fce46f2b47e884a7c945f6fa26e5da91cb54e24357a1192ec17e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.55427/kopia-20220706.0.55427-linux-x64.tar.gz"
    sha256 "68193fe7b6034c29664092f8af36f45bbd46e66b8460bbfb04ee5ef24da27b5e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.55427/kopia-20220706.0.55427-linux-arm.tar.gz"
    sha256 "464bde909c84c0108f25c8af53bfc9c43504c77b059bab7c138037e611c5740f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220706.0.55427/kopia-20220706.0.55427-linux-arm64.tar.gz"
    sha256 "378766fec7610efad70a0d645c5b9ef86e29c97e1bea30563bef4209db51f257"
  end

  def install
    bin.install "kopia"
  end
end

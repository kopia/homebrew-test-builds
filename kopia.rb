# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.232556"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232556/kopia-20210403.0.232556-macOS-x64.tar.gz"
    sha256 "f62e9fd0a92f611f64a2300f1e2c9a43d40bda30a1c9e4970862368a2d213981"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232556/kopia-20210403.0.232556-macOS-arm64.tar.gz"
    sha256 "184f01a83909f0d09b354c17f456dca0fd35122744cf372b96eb23e0ca7a2abb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232556/kopia-20210403.0.232556-linux-x64.tar.gz"
    sha256 "8bff9522051586051dea4afbd619046f9ce1451ff105c51f4aece2ad369237ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232556/kopia-20210403.0.232556-linux-arm.tar.gz"
    sha256 "2adbc7e3ec2f2c1e1918545fc4d77c09ca348c7df6f43e293cd7729f98d3ba2b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232556/kopia-20210403.0.232556-linux-arm64.tar.gz"
    sha256 "8d95ad9b9258d9698806f4801ec1a685136a09b309826f990bcd6c781512de67"
  end

  def install
    bin.install "kopia"
  end
end

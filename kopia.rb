# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250404.0.165510"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250404.0.165510/kopia-20250404.0.165510-macOS-x64.tar.gz"
    sha256 "b17dd4fcfbf107f34aba8f2afb2f9593fc3d37e6aff527ecf43a8c7cb3d860ca"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250404.0.165510/kopia-20250404.0.165510-macOS-arm64.tar.gz"
    sha256 "f3c3d3b922035861e54b660572a5b49a87a6439b9cb0e6611020ab4f14e15eaf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250404.0.165510/kopia-20250404.0.165510-linux-x64.tar.gz"
    sha256 "e0dff44925a946f63d6c79435526a0fe671d62cbaf5c7f71fc8dcb9495c29fdc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250404.0.165510/kopia-20250404.0.165510-linux-arm.tar.gz"
    sha256 "2694eb981ad65c48aa56020c71fab65eb7cd69692855c45ffdf5e4ee8b71b742"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250404.0.165510/kopia-20250404.0.165510-linux-arm64.tar.gz"
    sha256 "25c0752cb01c1e3f28666662170dd980b64e7c8f0612447639f9348cb32ad824"
  end

  def install
    bin.install "kopia"
  end
end

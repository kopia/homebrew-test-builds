# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.144643"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.144643/kopia-20250529.0.144643-macOS-x64.tar.gz"
    sha256 "685b34bf0a7fbb795e2ada8847e191c0b6848e31f60b3a3c5cc87069e4a277c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.144643/kopia-20250529.0.144643-macOS-arm64.tar.gz"
    sha256 "345bee0a9cf5960ca62c9814f69c760d66da0214f944517cc8e03e2a2eae2dca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.144643/kopia-20250529.0.144643-linux-x64.tar.gz"
    sha256 "f43af3b7c038e4a4231c21c6b1aa7e043fc607e7db945445e9659fec290b969e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.144643/kopia-20250529.0.144643-linux-arm.tar.gz"
    sha256 "16049e427b8c011af9e459c7dbefca7547921ead14e05a9b04fe4184075bdb68"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.144643/kopia-20250529.0.144643-linux-arm64.tar.gz"
    sha256 "23ac28ae864e41c61db8270d3ffa6172b53e5fc60f56337b67b199d54458173c"
  end

  def install
    bin.install "kopia"
  end
end

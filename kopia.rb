# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220302.0.201232"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220302.0.201232/kopia-20220302.0.201232-macOS-x64.tar.gz"
    sha256 "a81f346240f5d36ed7ff522445b7dff5d3a75077112291e6449b7e1de944a383"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220302.0.201232/kopia-20220302.0.201232-macOS-arm64.tar.gz"
    sha256 "6bc4b1cb10bcc6070ba9d370bf6de567cf3547b77f5bdceb202038232dcefb90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220302.0.201232/kopia-20220302.0.201232-linux-x64.tar.gz"
    sha256 "92555191eed0376a0a10642784c00fad01b4c61ebd42e671006479e99eb4c6bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220302.0.201232/kopia-20220302.0.201232-linux-arm.tar.gz"
    sha256 "cc5db7323870b100483be809b5d4681caa8239deb3087f5bc1bc09c32eb6cf4c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220302.0.201232/kopia-20220302.0.201232-linux-arm64.tar.gz"
    sha256 "774b6cfad6c299128f15af4a6796eef479d92fca22902456dfa01d97fbe89752"
  end

  def install
    bin.install "kopia"
  end
end

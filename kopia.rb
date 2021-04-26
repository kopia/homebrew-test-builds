# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210425.0.215456"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.215456/kopia-20210425.0.215456-macOS-x64.tar.gz"
    sha256 "95f7da323826fcec38dfa6b63d4bc8b926bf4834d715f28a8c4adfd5ed1e34ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.215456/kopia-20210425.0.215456-macOS-arm64.tar.gz"
    sha256 "0c592338cfed3ea3a146951fb6baadb769b1c371119b34d7e8b79e86b72d9562"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.215456/kopia-20210425.0.215456-linux-x64.tar.gz"
    sha256 "7549a167272a1002ff260b350e106379d89b7f1f9125fccdeac3cef42303c046"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.215456/kopia-20210425.0.215456-linux-arm.tar.gz"
    sha256 "f3c1aab0db2b793e1a26ad367aa621fc6c6a818cad7fe62cd9d40cca613a3af8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210425.0.215456/kopia-20210425.0.215456-linux-arm64.tar.gz"
    sha256 "a1a6cef136044e539ef79f5ac0e520565c8a7fe356e96b26530d7d24b04d471e"
  end

  def install
    bin.install "kopia"
  end
end

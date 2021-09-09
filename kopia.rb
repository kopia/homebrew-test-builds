# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210908.0.204342"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.204342/kopia-20210908.0.204342-macOS-x64.tar.gz"
    sha256 "d58386dcf34b5f421adefc3d32d00124c0e2d9263e26d0a26e06a58b61fd5a7d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.204342/kopia-20210908.0.204342-macOS-arm64.tar.gz"
    sha256 "17c72100c7cfb625cec6e155c2f485aa5302b67724bdf9f04c36770838a87728"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.204342/kopia-20210908.0.204342-linux-x64.tar.gz"
    sha256 "a8aa5bec180d1c1aa0b47cab699de32c1c8d8d5ecaa2ef21a4b561dc63f4a0fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.204342/kopia-20210908.0.204342-linux-arm.tar.gz"
    sha256 "358f106b9a94b0475be266f4b00f63586f173372f52559526e5372ff34362535"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210908.0.204342/kopia-20210908.0.204342-linux-arm64.tar.gz"
    sha256 "e606bf7aa94e7ab049234a9e19301cc7968256f9047c110bd4ef6fd8ebecaedc"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220723.0.12150"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.12150/kopia-20220723.0.12150-macOS-x64.tar.gz"
    sha256 "9aa87dc4407604e52fe5c04b491922a290a17e1e1fbcb67203b63a470171415d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.12150/kopia-20220723.0.12150-macOS-arm64.tar.gz"
    sha256 "610c99d69bf5d1ebc57bd5e77d05151570554fee8d259220613d70be47314992"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.12150/kopia-20220723.0.12150-linux-x64.tar.gz"
    sha256 "329898ec03769e294be9f88fba714f259aeeb149e1747c3d9d6f47bc4d930dd4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.12150/kopia-20220723.0.12150-linux-arm.tar.gz"
    sha256 "f0f26024f2d3ba8473d0f4058126596995437034bf4ca0774b45eb4d56b313b3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.12150/kopia-20220723.0.12150-linux-arm64.tar.gz"
    sha256 "878612587cf6646067804bda9ca3218731c52ab80fffad5585583089ef94df5b"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.125503"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.125503/kopia-20210717.0.125503-macOS-x64.tar.gz"
    sha256 "8004e17178aaae712c0de459c685b3f154f0cf7259a360892470d748cdf3f40f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.125503/kopia-20210717.0.125503-macOS-arm64.tar.gz"
    sha256 "7851cf01bb0c2da9dc9715cc3c224140840b7533f00c8e037fa567af3d34a210"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.125503/kopia-20210717.0.125503-linux-x64.tar.gz"
    sha256 "73e2f662e567b616f26eb41c2decd5abf667a702af94e51632ca003dd93938b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.125503/kopia-20210717.0.125503-linux-arm.tar.gz"
    sha256 "cc88de6375e8e24851920b97e10de32ec0ea30f8ed03727c7149729b8f4dc0fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.125503/kopia-20210717.0.125503-linux-arm64.tar.gz"
    sha256 "b278ee08e8fe545db155d7de92d8d6ea7eb67bbcba1b1f12301b83efa583815c"
  end

  def install
    bin.install "kopia"
  end
end

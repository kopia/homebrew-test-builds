# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.222343"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.222343/kopia-20210416.0.222343-macOS-x64.tar.gz"
    sha256 "838bf3f2e871d0bee7045516b6dc9807eaadf43e725d1070c1f774dc81e7c248"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.222343/kopia-20210416.0.222343-macOS-arm64.tar.gz"
    sha256 "5c1d214ed8f6e47012b4412e5b3e1a9169f206a6534f2e393d9a274110cfecb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.222343/kopia-20210416.0.222343-linux-x64.tar.gz"
    sha256 "0154eec6a45cb7f0b82cca4f183a708808cac93d3070b778ff065b93e6705a8f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.222343/kopia-20210416.0.222343-linux-arm.tar.gz"
    sha256 "d8996b42d967b09ac487fcffb625f6517a6446bb6e24ff620ccd65b0d30fc633"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.222343/kopia-20210416.0.222343-linux-arm64.tar.gz"
    sha256 "679f6a2ac36a2d0588345bbc5b8938ff5a4ba8e5b43839597fb6ba08d18f2469"
  end

  def install
    bin.install "kopia"
  end
end

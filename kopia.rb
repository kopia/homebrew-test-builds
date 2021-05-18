# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210517.0.211303"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211303/kopia-20210517.0.211303-macOS-x64.tar.gz"
    sha256 "959fec190757b94c6a9f22d951113c252936d2be566ed1bdd4a697f03b47dacf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211303/kopia-20210517.0.211303-macOS-arm64.tar.gz"
    sha256 "6ead108b38e7fe40f3c1b5923b9a9b8074cb29b6c9ec502d01d968bc1f6dea92"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211303/kopia-20210517.0.211303-linux-x64.tar.gz"
    sha256 "40eec94a9f8389d57d844be40a1da4cb03e9df8e483008961d2247552c5083e7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211303/kopia-20210517.0.211303-linux-arm.tar.gz"
    sha256 "587642f69be1373472ed33e96d901c84494be023278a9d83430d2767fcbc79ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211303/kopia-20210517.0.211303-linux-arm64.tar.gz"
    sha256 "3e4ffd569dc4777c8ae64d855ddb1a94a3ac581712b79272f426b1bc7e285631"
  end

  def install
    bin.install "kopia"
  end
end

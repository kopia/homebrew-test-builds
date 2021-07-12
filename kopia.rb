# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.220923"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220923/kopia-20210710.0.220923-macOS-x64.tar.gz"
    sha256 "093792d2b546d60bc315efbc697a7aeef18cea131bee7baa2f3e0b90e5a190be"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220923/kopia-20210710.0.220923-macOS-arm64.tar.gz"
    sha256 "13a3951c6dea9c70deae902e5ac2c3dfa8f651c8ec2000ed09040476feb69452"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220923/kopia-20210710.0.220923-linux-x64.tar.gz"
    sha256 "b44576472bd2c064fcefe687008bdc5fc0828196070d75b277e9e58dc23111bb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220923/kopia-20210710.0.220923-linux-arm.tar.gz"
    sha256 "c84f75c69a2992dc9ee363813f91b4adee9f613380db7271c411c2d1a1faf6bc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.220923/kopia-20210710.0.220923-linux-arm64.tar.gz"
    sha256 "b1451626f6a32bb3d365ff48be77449ae0105a4cc54478e7a604907dc46d6240"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.55531"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.55531/kopia-20230328.0.55531-macOS-x64.tar.gz"
    sha256 "02acb6b2357d59cb9565a05376ccb3e91160d1199b3125d9e73c3bbbfa3b48f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.55531/kopia-20230328.0.55531-macOS-arm64.tar.gz"
    sha256 "62c9859a5a6fbacd0aea8f240252c2424bd212143e96d5b1254602a0228c5b54"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.55531/kopia-20230328.0.55531-linux-x64.tar.gz"
    sha256 "8d76d87e06b0253a01f3ebbeacab927bd257d9ad148127b34bade525369914fc"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.55531/kopia-20230328.0.55531-linux-arm.tar.gz"
    sha256 "033236582f0cf1a127b3eb398c1b2d0502f52c855bd8520b9f22b88f6cd9def4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.55531/kopia-20230328.0.55531-linux-arm64.tar.gz"
    sha256 "10ce199b265303cbf29f4c28bed774358c0ab0ad41315ffab87672307b9b2855"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210416.0.81713"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-x64.tar.gz"
    sha256 "2cbb66999879e69ab235164cc95e7f2fc5f9c2de5ac40fd4b296b226a4c16a07"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-macOS-arm64.tar.gz"
    sha256 "0d21002a297b35e5db81343d376bf4a42379b3450f37716e80ee5ba15f2c66b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-x64.tar.gz"
    sha256 "d9b33b9a25206283a71341bb4d8079c16d647fc7e9e970c9d4d95e92adf33a4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm.tar.gz"
    sha256 "3254218fd9a4b90263ca8ae7d1f9ee84e1af5a4601894eef1d241898949b49a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210416.0.81713/kopia-20210416.0.81713-linux-arm64.tar.gz"
    sha256 "1a4f81072494f9a4151fdb2c0e723874e86719970ea5d026a64c860834d72d0a"
  end

  def install
    bin.install "kopia"
  end
end

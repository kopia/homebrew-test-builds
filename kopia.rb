# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.111804"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111804/kopia-20211002.0.111804-macOS-x64.tar.gz"
    sha256 "c51d54c005ff82130fc96f6d156fef41d96599a0061ed7c8e77f962b3350b2e7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111804/kopia-20211002.0.111804-macOS-arm64.tar.gz"
    sha256 "cc3a98b8a40859bf005b993cc7e2f236e05df66fbe179b39c97153654cbe79e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111804/kopia-20211002.0.111804-linux-x64.tar.gz"
    sha256 "d4d81f2c5e024f79764eb251a82e281d3639384c7d033d8e5363e82798f5e59d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111804/kopia-20211002.0.111804-linux-arm.tar.gz"
    sha256 "ac0fab28d59911c5337da3162f8f85ebf537ddece3d05e5b0766cf29ec573695"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111804/kopia-20211002.0.111804-linux-arm64.tar.gz"
    sha256 "9a5a81897fa3abc8a4a96cfe3141bd3f99a6e8ee67f6307d4653edffe02ec821"
  end

  def install
    bin.install "kopia"
  end
end

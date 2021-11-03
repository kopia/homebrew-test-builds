# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211102.0.224328"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.224328/kopia-20211102.0.224328-macOS-x64.tar.gz"
    sha256 "11920cb893587b7574628adafa47af237c2a1d566f8c8a54f9cda5fa96afa0f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.224328/kopia-20211102.0.224328-macOS-arm64.tar.gz"
    sha256 "b2462bf859dcf6d97f9950195bcf7ca2e9136ec7916cbf5c3570907f30c37478"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.224328/kopia-20211102.0.224328-linux-x64.tar.gz"
    sha256 "59d689ff1c13ae942c89ea83722af41043f007f3f3075514e46d135a8d23b28f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.224328/kopia-20211102.0.224328-linux-arm.tar.gz"
    sha256 "4fc25a2bcf616447b21776cb2420590dfbbe918b08ce8384687cd614bc2a8d14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211102.0.224328/kopia-20211102.0.224328-linux-arm64.tar.gz"
    sha256 "e40670ab45ae4978af439074e0ef8c86287b2841eb7f4b29ee386039e8d0021f"
  end

  def install
    bin.install "kopia"
  end
end

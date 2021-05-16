# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.151641"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151641/kopia-20210516.0.151641-macOS-x64.tar.gz"
    sha256 "2c7e2f7c5d034288a90018100d454cc54fe7d992b14d8bdfb725d86e74d93c09"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151641/kopia-20210516.0.151641-macOS-arm64.tar.gz"
    sha256 "69cdda531c5bb1c7f06ceea06c22cac4e3c69e141f865a5c4647ca52db9526d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151641/kopia-20210516.0.151641-linux-x64.tar.gz"
    sha256 "f2e519a04cd13666cab6163a9ca2525f3c23a8a63d92f7f14202432f619a4e71"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151641/kopia-20210516.0.151641-linux-arm.tar.gz"
    sha256 "f392cacc3ff61fe50fe28d6e582ca3b1ade70488272e22cf5c69f2ab1c55539f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151641/kopia-20210516.0.151641-linux-arm64.tar.gz"
    sha256 "10495f3eba0940db1edfb0c07b6091892b8cf89d26df581a5aae764e086d1bba"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241024.0.173317"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.173317/kopia-20241024.0.173317-macOS-x64.tar.gz"
    sha256 "83820063d06ffbd43404d860e6af48a351fcec5c09ac30dfb6042f2a86370f84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.173317/kopia-20241024.0.173317-macOS-arm64.tar.gz"
    sha256 "5575bc26dfc99d25b936ff28333b7d36ebffb551ebdf6926349df057c63cb479"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.173317/kopia-20241024.0.173317-linux-x64.tar.gz"
    sha256 "efe6dd28acc982e48ad54c425d7f6bd12a8603769273c7df97f59fad0e6a76e6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.173317/kopia-20241024.0.173317-linux-arm.tar.gz"
    sha256 "0841159d057001567f87b704b3eb543619aeecc13b45cd3a0874284c1ef5f7db"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241024.0.173317/kopia-20241024.0.173317-linux-arm64.tar.gz"
    sha256 "1fe5e484e9a3506be867ec64d62b735e6f54f8e05d9043437e9ddab3d7957abf"
  end

  def install
    bin.install "kopia"
  end
end

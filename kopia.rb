# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220525.0.234505"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.234505/kopia-20220525.0.234505-macOS-x64.tar.gz"
    sha256 "cbe34b8d7a8f77772814657881922fe5a2c816e744baf23e2a92374c32f4a7d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.234505/kopia-20220525.0.234505-macOS-arm64.tar.gz"
    sha256 "859f5cf767445cd1985acc8fcd7b1c52a10fe0e8e91f51b107341904e623eb30"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.234505/kopia-20220525.0.234505-linux-x64.tar.gz"
    sha256 "d9edd2a2342561b7dd99f868a246b30747e11f8c342abced47482ac4d7ed10b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.234505/kopia-20220525.0.234505-linux-arm.tar.gz"
    sha256 "b9c36eca218489e7a0b76d70d46f9991392f1a55c1a5b10b3f76a7ae8661b817"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.234505/kopia-20220525.0.234505-linux-arm64.tar.gz"
    sha256 "cdae840cb800b60eceb9910daaff0f05898db19f3d495183161dc670d28f0ad0"
  end

  def install
    bin.install "kopia"
  end
end

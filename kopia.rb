# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220326.0.194252"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.194252/kopia-20220326.0.194252-macOS-x64.tar.gz"
    sha256 "b5b36839d411e6d9aeae94cdd97ecfde7eaa4b5f6283ca407d5c153b828005d6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.194252/kopia-20220326.0.194252-macOS-arm64.tar.gz"
    sha256 "ad5ff9c7d75b133366c4f43971e7fc9cf04c416858cf7b69b2e4a1eb0d989935"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.194252/kopia-20220326.0.194252-linux-x64.tar.gz"
    sha256 "f682244b072dee405628bfe6e99cf1950d903f043ff87938df0f1e07a3aa454f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.194252/kopia-20220326.0.194252-linux-arm.tar.gz"
    sha256 "f0f7bd1125e1a0a3b71f06c23dbfb56e4582a99198177e987d6abc9920d053d8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220326.0.194252/kopia-20220326.0.194252-linux-arm64.tar.gz"
    sha256 "3f4ec2c8d3fad8564b6a2bb22781c5df585fea993e537812b6259aef91f6b385"
  end

  def install
    bin.install "kopia"
  end
end

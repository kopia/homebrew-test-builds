# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210910.0.175155"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.175155/kopia-20210910.0.175155-macOS-x64.tar.gz"
    sha256 "7380caa15750bc1507a21a3078c36ad5a5c0cc42cf0f3f10b96957c8b7dcc4cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.175155/kopia-20210910.0.175155-macOS-arm64.tar.gz"
    sha256 "b80c6155d9f45b65bbe95caee8eb0bdef81842a6a2ea1c1dd86a321e9ed2f5a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.175155/kopia-20210910.0.175155-linux-x64.tar.gz"
    sha256 "06931eec3f3fcba3e45cfe2ba449d24113998e6f9b861cba81bf2beeb5097100"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.175155/kopia-20210910.0.175155-linux-arm.tar.gz"
    sha256 "380e4a44c7021c2423c3677406dd8042c0c5d4f9ad4abc6dd9859fb1a70e5ca0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210910.0.175155/kopia-20210910.0.175155-linux-arm64.tar.gz"
    sha256 "227f3f6995d1da3244cc1502d9ead8b473e78b0f825bee5d61aa8198deeb3718"
  end

  def install
    bin.install "kopia"
  end
end

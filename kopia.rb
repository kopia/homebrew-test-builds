# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231218.0.233229"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.233229/kopia-20231218.0.233229-macOS-x64.tar.gz"
    sha256 "1094b0c0294f6076313ba5ecc2e63c49762e5c93420781a4b723b4a6cfd68035"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.233229/kopia-20231218.0.233229-macOS-arm64.tar.gz"
    sha256 "59eac98ed2a42e30b871525d2df2aeb28337b0cead4887f65d0837d424813884"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.233229/kopia-20231218.0.233229-linux-x64.tar.gz"
    sha256 "03d7c8d633ad898c02d319eb925e2c6f69d5b8601350b47704920f73349a742c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.233229/kopia-20231218.0.233229-linux-arm.tar.gz"
    sha256 "0d5674f67e5b5318e4131d819d456ffb1f3bb6024429fbefb7c380083f4c4db8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231218.0.233229/kopia-20231218.0.233229-linux-arm64.tar.gz"
    sha256 "0dd4d957b972c61bdaf85c7839357612cadabf316cdf270b3ed0d1c9553b79ab"
  end

  def install
    bin.install "kopia"
  end
end

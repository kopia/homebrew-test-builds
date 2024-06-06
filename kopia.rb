# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240606.0.134448"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240606.0.134448/kopia-20240606.0.134448-macOS-x64.tar.gz"
    sha256 "768cff6d44ac3026c09a6fd0badbcc6f0ef7b2f6ce7dcc044a13d8c3ff55ba82"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240606.0.134448/kopia-20240606.0.134448-macOS-arm64.tar.gz"
    sha256 "2937e6130fe8baa2fdbe7a645c7539afe380cc0b2853ad5f7b738bb7954a81ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240606.0.134448/kopia-20240606.0.134448-linux-x64.tar.gz"
    sha256 "aaf2ce7f3b98345a42a2df968aa295d252e98deb6d329f1efe36eb191ccf1ade"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240606.0.134448/kopia-20240606.0.134448-linux-arm.tar.gz"
    sha256 "3b7f33b784adebc984cf9db5d58224fd4816247fb04bc2b49ea3a5b9aff75407"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240606.0.134448/kopia-20240606.0.134448-linux-arm64.tar.gz"
    sha256 "f21049a6c5d8a8e1f2c8d34a9acf78d1c52c3d85b17492611dd02bb89e3d94d9"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240805.0.224121"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.224121/kopia-20240805.0.224121-macOS-x64.tar.gz"
    sha256 "411cb985e9293ed6a0a44485b4a09a47e6f734d4afb9d23bd8d01d197c274219"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.224121/kopia-20240805.0.224121-macOS-arm64.tar.gz"
    sha256 "55a7950bb7bf28f76ede5003a1d90bf6caaa3f015441cd4bb134b7e454375ab7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.224121/kopia-20240805.0.224121-linux-x64.tar.gz"
    sha256 "c78f5f1b6eb6d5dca099afdf41e60325db469e328b9e2ad9732f289d57430d30"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.224121/kopia-20240805.0.224121-linux-arm.tar.gz"
    sha256 "380aec731e0ac8f3f809738ba2ae91224f4d0ba73bff34d5b6bc79f6cf88ac20"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.224121/kopia-20240805.0.224121-linux-arm64.tar.gz"
    sha256 "471e855f63658f97842ad3dbdba68a36e1f4429f98bab29cf13d1f5d02fc0654"
  end

  def install
    bin.install "kopia"
  end
end

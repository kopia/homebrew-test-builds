# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231127.0.215532"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.215532/kopia-20231127.0.215532-macOS-x64.tar.gz"
    sha256 "011b55675717f0ff9436916c67755d152717d0103ddc0bb2b23733f2c159f06e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.215532/kopia-20231127.0.215532-macOS-arm64.tar.gz"
    sha256 "a856062dd275c410c61da662d82deaaffc7d9575d723ab03b7ce605ae3f23888"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.215532/kopia-20231127.0.215532-linux-x64.tar.gz"
    sha256 "3723884aa89e09f3d06a9792ce2fc27df3fbc6d1b7652aaa6137fd349dc7d58b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.215532/kopia-20231127.0.215532-linux-arm.tar.gz"
    sha256 "7ed186b2e21e8a2d496c551e85347847d13e0ba62d70472df10f9e297b4e2787"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231127.0.215532/kopia-20231127.0.215532-linux-arm64.tar.gz"
    sha256 "10829572dcafb664312f12611525fd4d8ac3cb753904e8b5095db2166f8c3705"
  end

  def install
    bin.install "kopia"
  end
end

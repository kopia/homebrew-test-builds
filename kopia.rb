# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220909.0.32150"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220909.0.32150/kopia-20220909.0.32150-macOS-x64.tar.gz"
    sha256 "3746358d1b42b33e18a3b4dcf1a3d88625fe817e69c2f304d868985a6e6d4c2e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220909.0.32150/kopia-20220909.0.32150-macOS-arm64.tar.gz"
    sha256 "0bf5b951aa8c1d27f3efa0dbe91b3f88b54141d1a41270cbf2b67542315d7335"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220909.0.32150/kopia-20220909.0.32150-linux-x64.tar.gz"
    sha256 "b32a7bbceae6bf68497d895f4b33e9618f4261221cca28220f02d8af94ad299c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220909.0.32150/kopia-20220909.0.32150-linux-arm.tar.gz"
    sha256 "62a477feb5006f4dd1c1e4a8bcdc910f6b99a543610dac07b74f9fdecdd49f2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220909.0.32150/kopia-20220909.0.32150-linux-arm64.tar.gz"
    sha256 "74924cec295bae28ab213ab6f96b2074a5036cee83b3650ff75a0f6689c085a1"
  end

  def install
    bin.install "kopia"
  end
end

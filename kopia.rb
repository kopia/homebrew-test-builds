# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210717.0.160451"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.160451/kopia-20210717.0.160451-macOS-x64.tar.gz"
    sha256 "6dfe6bd9581fdbc09f6a5e82c1f001b916dd7cdc9dcaa9f5a24d6cd0eba8d2c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.160451/kopia-20210717.0.160451-macOS-arm64.tar.gz"
    sha256 "ad4c64d09c0176b0a261b5c0ba0a475860e9d9b157f1ef45c4317d3820ce2809"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.160451/kopia-20210717.0.160451-linux-x64.tar.gz"
    sha256 "d08a26876068861cc21602b21fa4428a7cc94bfd7d2f842edf2e71735af36664"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.160451/kopia-20210717.0.160451-linux-arm.tar.gz"
    sha256 "943e953530629c34b3f3b7f995866fdd89b9e29567ff3cad85fcd9835b0fd807"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210717.0.160451/kopia-20210717.0.160451-linux-arm64.tar.gz"
    sha256 "417efc106465fc11c530b5890c5db4bafc9d71c33eb33f3749023db78c1b11c2"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210609.0.203107"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210609.0.203107/kopia-20210609.0.203107-macOS-x64.tar.gz"
    sha256 "2925eaded597daa75dc6b3d61f452f0b211caa30fc54862370f3e393f1f82df0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210609.0.203107/kopia-20210609.0.203107-macOS-arm64.tar.gz"
    sha256 "229893ad80af27f87759d738f0cbc27e789b6dcf5cdf879faf4b0397a97cc349"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210609.0.203107/kopia-20210609.0.203107-linux-x64.tar.gz"
    sha256 "d0591b36fe0512c10fdc2a623e1cd21399c380a20213de0f61394f139251f668"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210609.0.203107/kopia-20210609.0.203107-linux-arm.tar.gz"
    sha256 "fe036f436606ddec4c7ef37c2365a808483590e32ab3f2d9f40ef058798e9a2b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210609.0.203107/kopia-20210609.0.203107-linux-arm64.tar.gz"
    sha256 "7229c2eda9b8108ff36c655a9a8580689c7a184072714b83b1363889d2bb88d5"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240926.0.222210"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.222210/kopia-20240926.0.222210-macOS-x64.tar.gz"
    sha256 "c2817e8e0e7d5b9a6534d17346b7cb32a514107c8ef20ce1e16f9e51e525f2c1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.222210/kopia-20240926.0.222210-macOS-arm64.tar.gz"
    sha256 "d90ea9bbd1fb54771b00db567578d812e58d689aac94c263feb97b97b9f04654"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.222210/kopia-20240926.0.222210-linux-x64.tar.gz"
    sha256 "bfde11359d3578415216f3f77c8b15198c630a257b9873eb3f1c132e3a3c73d0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.222210/kopia-20240926.0.222210-linux-arm.tar.gz"
    sha256 "07c4e0431178120cf9e103fc8e776ae8cfd3a9808b1b57bccdfb47587fd762dc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240926.0.222210/kopia-20240926.0.222210-linux-arm64.tar.gz"
    sha256 "d8095204e3a69673c4abf1c57071c89716662eb6c03b5de0a5497ead260c0581"
  end

  def install
    bin.install "kopia"
  end
end

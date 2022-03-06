# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.143134"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.143134/kopia-20220306.0.143134-macOS-x64.tar.gz"
    sha256 "70a1989bfbc38aeaa80447b28adff2a2f78deb01d38891bb48b5109408fcffaf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.143134/kopia-20220306.0.143134-macOS-arm64.tar.gz"
    sha256 "e5539427067f282e1d5e53a2e020a9d6ee2fa01898c363ffefe916b8fc5c0417"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.143134/kopia-20220306.0.143134-linux-x64.tar.gz"
    sha256 "eafc670b4a44038f2f54cec5148f5c42855d31b08572394f20f0ee1c3e619614"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.143134/kopia-20220306.0.143134-linux-arm.tar.gz"
    sha256 "09f2e9bfa6f6a078415e3c760f141912d63a5bfe32da72c3adb5714ef764d97c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.143134/kopia-20220306.0.143134-linux-arm64.tar.gz"
    sha256 "5a5c477109cff7ed7de5460ef9bcd12c7ca9ba22f8040d6fc854e972956f0777"
  end

  def install
    bin.install "kopia"
  end
end

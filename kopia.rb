# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.205619"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.205619/kopia-20210406.0.205619-macOS-x64.tar.gz"
    sha256 "22a3e9270d051ccfa8a5a4f39317fc5d779fd2d5489aa5f0522f201b0fbe9956"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.205619/kopia-20210406.0.205619-macOS-arm64.tar.gz"
    sha256 "789817c2aed04042cfd7e738b71ec0a5efcf7c4f77020c67691e65241aff44da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.205619/kopia-20210406.0.205619-linux-x64.tar.gz"
    sha256 "04eacf8719fc7d47a61c5f6f1eae029684bffb23f9dc9ac0e446c8f531ec8cbe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.205619/kopia-20210406.0.205619-linux-arm.tar.gz"
    sha256 "b2f29cd8ca8c5f1c25b231cbc2244f715b37717f5cc4e3e1e87c899762ce7aa6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.205619/kopia-20210406.0.205619-linux-arm64.tar.gz"
    sha256 "a4b71dc4b673796a7de674f0c47064c9518f30bcd5b663155cf0cb4d41e5d2ac"
  end

  def install
    bin.install "kopia"
  end
end

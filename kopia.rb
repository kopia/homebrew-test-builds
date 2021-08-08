# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210807.0.201803"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.201803/kopia-20210807.0.201803-macOS-x64.tar.gz"
    sha256 "a291f6d2203fc75a303a724a43109fc76af9b05e94f2f12bf2ff59daa0539432"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.201803/kopia-20210807.0.201803-macOS-arm64.tar.gz"
    sha256 "33c6a2f0c2b7ff0731aab49bfcddfb500a898b35332a070cbc462d4c5d3a51db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.201803/kopia-20210807.0.201803-linux-x64.tar.gz"
    sha256 "c62fb4372291588b58cff50a65add97dda67b1aef4c6fb1d17424d1bda13a881"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.201803/kopia-20210807.0.201803-linux-arm.tar.gz"
    sha256 "6a6cae1698327bd778345128f6b237d4dbd0c1f6a1eafd3f7d5a848b53e70823"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.201803/kopia-20210807.0.201803-linux-arm64.tar.gz"
    sha256 "6c9139b0e82114cf76d32c38724a374afba700f79b37d22ed6897f6d83e1033c"
  end

  def install
    bin.install "kopia"
  end
end

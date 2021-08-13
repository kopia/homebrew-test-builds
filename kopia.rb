# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210813.0.646"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210813.0.646/kopia-20210813.0.646-macOS-x64.tar.gz"
    sha256 "17759c6dc0a13a01c2e12d830d142a59ed39136312beb244352e7ccb06146910"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210813.0.646/kopia-20210813.0.646-macOS-arm64.tar.gz"
    sha256 "c0da2dabb62278abe4fe7df56374b0895619973dce4877822b1486e6e5a43cc8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210813.0.646/kopia-20210813.0.646-linux-x64.tar.gz"
    sha256 "decb61037e31c4514360318f4cb452fe2b453ec8cf26d662c3800fdcd859c309"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210813.0.646/kopia-20210813.0.646-linux-arm.tar.gz"
    sha256 "9a4e344f8cda295e845881c9d3bdc2e45a31c35679f29f25db2a69a77869d8b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210813.0.646/kopia-20210813.0.646-linux-arm64.tar.gz"
    sha256 "709ff8645d5b30b8b193c74f2752d01920f273c3f13ef477906687750d26c8eb"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210328.0.82635"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210328.0.82635/kopia-20210328.0.82635-macOS-x64.tar.gz"
    sha256 "1ca15c1bd4a54bf22583161fe80bf205ad7480c788e57e0dc9a7a8479ae2843c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210328.0.82635/kopia-20210328.0.82635-macOS-arm64.tar.gz"
    sha256 "6d63dcc630dbcc7b017317f2e516b0ac33135172250ccf0cbbe0023fc1c6e402"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210328.0.82635/kopia-20210328.0.82635-linux-x64.tar.gz"
    sha256 "0f16143ef4a059407045a67a8bac251cee371db173b2234ed79388da6df35b94"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210328.0.82635/kopia-20210328.0.82635-linux-arm.tar.gz"
    sha256 "794f5e98c1689ab6294c23c7f4c5855c93608364c099a65e2aa93a51f74b4012"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210328.0.82635/kopia-20210328.0.82635-linux-arm64.tar.gz"
    sha256 "25b8582ac42d6e306e922c9bb92d5212187706398d85b5b339f9897bb516eb90"
  end

  def install
    bin.install "kopia"
  end
end

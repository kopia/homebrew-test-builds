# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211020.0.90444"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.90444/kopia-20211020.0.90444-macOS-x64.tar.gz"
    sha256 "f19a9cf4c0d0833b12f9e42815eddb4cb170f81ad1a2098f9e7eb501a9bccfb8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.90444/kopia-20211020.0.90444-macOS-arm64.tar.gz"
    sha256 "0e86a84217d6dfe548aa86886f191a227f009bd44c89acf88cd55f34ef5da1e3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.90444/kopia-20211020.0.90444-linux-x64.tar.gz"
    sha256 "b99c62b31eca63bab4520faf15949490c1b7b7d8cef4800f53cb35672cd39d6b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.90444/kopia-20211020.0.90444-linux-arm.tar.gz"
    sha256 "a3fe04a44e52ea59242607d64b52f05abbad5fa55e1362846c0668054b45b1e5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.90444/kopia-20211020.0.90444-linux-arm64.tar.gz"
    sha256 "7b7067939bbb65dd3227bb776edb0618522e741e3d4b5d121111b04d19897be4"
  end

  def install
    bin.install "kopia"
  end
end

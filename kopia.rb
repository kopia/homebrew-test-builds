# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251202.0.52724"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251202.0.52724/kopia-20251202.0.52724-macOS-x64.tar.gz"
    sha256 "58b96b106921ff25973be85c8293bbdf1a217457f04fe763f9b2669b259f0941"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251202.0.52724/kopia-20251202.0.52724-macOS-arm64.tar.gz"
    sha256 "44f875f373801f54102a502e6b4f7120d3d2b9acccad26da1fd7ca84b2d1045b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251202.0.52724/kopia-20251202.0.52724-linux-x64.tar.gz"
    sha256 "b5cff4dab1f7575f1b0f453910de80ec4b545b414a38b3df64b0e716491f2d37"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251202.0.52724/kopia-20251202.0.52724-linux-arm.tar.gz"
    sha256 "ee0f4268ca3f2d7b6c04e75ea90dc307b22d721db203c3ae23ef6c74905f0022"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251202.0.52724/kopia-20251202.0.52724-linux-arm64.tar.gz"
    sha256 "1597ea15622423dd32672041d2c734518bc1d224d9cfb4eeff51f637de740857"
  end

  def install
    bin.install "kopia"
  end
end

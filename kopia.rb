# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211109.0.55048"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.55048/kopia-20211109.0.55048-macOS-x64.tar.gz"
    sha256 "52b95ee7eefa10404fa47ccca37eaf86bd8c4f18664d91a94d146c64421484e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.55048/kopia-20211109.0.55048-macOS-arm64.tar.gz"
    sha256 "c5df83ae3cc7178ad1c0ddec70a5d1a0da5e361efcafbcb17e9502ecc298dcb2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.55048/kopia-20211109.0.55048-linux-x64.tar.gz"
    sha256 "72578c0652f1219897147565a1bd04b50b5c3b37517dcdb10c45de456f882bd2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.55048/kopia-20211109.0.55048-linux-arm.tar.gz"
    sha256 "005efabda70ae964174252e686cc7b43ab6e6dc311eff3c8c512fceb0377b642"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211109.0.55048/kopia-20211109.0.55048-linux-arm64.tar.gz"
    sha256 "6ba04432136e657672e15b58bff6aebeea154a24c2207c95745790e6e19969f5"
  end

  def install
    bin.install "kopia"
  end
end

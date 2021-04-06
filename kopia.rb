# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.210640"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210640/kopia-20210405.0.210640-macOS-x64.tar.gz"
    sha256 "afe879b671f97c3dba52ca09bba9b388216a65061353cf5d510d0efa2cc2c2f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210640/kopia-20210405.0.210640-macOS-arm64.tar.gz"
    sha256 "18cfadc4a12972f3ad85932bf9327b2668b5a8457aa649b17e67b12aa660bd84"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210640/kopia-20210405.0.210640-linux-x64.tar.gz"
    sha256 "a3e571f24fbaa2614128094c332311bf1be48e098b605eddddc551e3e8adb510"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210640/kopia-20210405.0.210640-linux-arm.tar.gz"
    sha256 "2b8324968e043e4659e80da7483c128d8c6d4d43dc9a7fbc97c3b0826dd34004"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210640/kopia-20210405.0.210640-linux-arm64.tar.gz"
    sha256 "0e25e32d3da4290bae6cc79f832569437fcdabe9016df5139f52f1c12c5313cd"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210807.0.143350"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.143350/kopia-20210807.0.143350-macOS-x64.tar.gz"
    sha256 "e844c7c4ef1759ebbc875f7f3c26f3123bb955805d87fa554949c77246a94486"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.143350/kopia-20210807.0.143350-macOS-arm64.tar.gz"
    sha256 "82ee0998a13bc6a5b527337d8a81abe99d2a47f5071b21ff6780d8e7e13e02c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.143350/kopia-20210807.0.143350-linux-x64.tar.gz"
    sha256 "369e4c339587c53fb89da216b58fc33f8d07f3ec4bab5752e6212752ec9d7197"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.143350/kopia-20210807.0.143350-linux-arm.tar.gz"
    sha256 "c92b29dacda6e7b4a1d9e9d7c7f698ea13f5b35ab26e5b40b8ddf5bda4a61e5b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210807.0.143350/kopia-20210807.0.143350-linux-arm64.tar.gz"
    sha256 "a70f1cadd2d432d9db2d863f5fdf7c0644ef2fb2510f3a6e9d541b57f618ce52"
  end

  def install
    bin.install "kopia"
  end
end

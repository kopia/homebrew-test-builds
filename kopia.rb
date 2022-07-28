# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220728.0.124159"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.124159/kopia-20220728.0.124159-macOS-x64.tar.gz"
    sha256 "25b750da9211debabad8759ad30fc40a4ced305d8374db16903f65e61d65a611"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.124159/kopia-20220728.0.124159-macOS-arm64.tar.gz"
    sha256 "2fcbbeabbd9f1d556fcde5b81c1b4b1d64a61ff07d40a3575bbedb8246beb513"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.124159/kopia-20220728.0.124159-linux-x64.tar.gz"
    sha256 "206c95c67904a24308566ff5a6288230e833b4c90ab537a4b7374f55d685cda4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.124159/kopia-20220728.0.124159-linux-arm.tar.gz"
    sha256 "7ed51beb3ead064f337a8ffd4f9ef510491f689b5436af12616034917678661f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220728.0.124159/kopia-20220728.0.124159-linux-arm64.tar.gz"
    sha256 "2900b9cb8f2fc6ca63a0707c31f93fd4463fad021dde67b35810fe13ebc98dfb"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210903.0.172115"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210903.0.172115/kopia-20210903.0.172115-macOS-x64.tar.gz"
    sha256 "a7c33f2e5ea3d6db16dcf1439fade5585e33e917930168cbf31c1804da1c71cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210903.0.172115/kopia-20210903.0.172115-macOS-arm64.tar.gz"
    sha256 "98a6e949440017d78339aa3687f7779536245653acfd2f74b8144fc51e053fc6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210903.0.172115/kopia-20210903.0.172115-linux-x64.tar.gz"
    sha256 "2c78c760009787b992e8aa1a9ad7c9d0301eb5e5b67ec11bdcd9d0f61d6ea5c4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210903.0.172115/kopia-20210903.0.172115-linux-arm.tar.gz"
    sha256 "5788aa11b5eb3bb1aba05a64648ffc2f0d109c966f27eaf71d6f4728a607b564"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210903.0.172115/kopia-20210903.0.172115-linux-arm64.tar.gz"
    sha256 "7fb66f626a5b99433973832c538860fabbf3657d4ab6e5dcce48bbcd829e064a"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210610.0.183500"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210610.0.183500/kopia-20210610.0.183500-macOS-x64.tar.gz"
    sha256 "324965ce4b911d6bebceeafd0356860d7ffca00ec7edf03a2c14d8a088340405"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210610.0.183500/kopia-20210610.0.183500-macOS-arm64.tar.gz"
    sha256 "11d4d26ccebb63617ae36d23e0b41a637acec8af18607d68f2d4864155d1ce35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210610.0.183500/kopia-20210610.0.183500-linux-x64.tar.gz"
    sha256 "fd94415583b9107a27171a89302fa9c9ffef367b7e7c44c54eb7bdd199cbff67"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210610.0.183500/kopia-20210610.0.183500-linux-arm.tar.gz"
    sha256 "39ff3cc8c98cad2d97c92f1b9ea65eaa52234fdcf1ee005e43c5618acb226fe6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210610.0.183500/kopia-20210610.0.183500-linux-arm64.tar.gz"
    sha256 "5d146009633121bd15d110c5ab1b02631b4ac875740138c6d1b6c4a8d8a68fb6"
  end

  def install
    bin.install "kopia"
  end
end

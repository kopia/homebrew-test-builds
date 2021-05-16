# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210516.0.151652"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151652/kopia-20210516.0.151652-macOS-x64.tar.gz"
    sha256 "d9ba011b378b5afcdb530a1ed6d73c6c0097914b73ac76cd4102253372bb0f88"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151652/kopia-20210516.0.151652-macOS-arm64.tar.gz"
    sha256 "6096407576d72c4ade31c5c775344505856be6c0d1242cfea122ec09c717cd40"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151652/kopia-20210516.0.151652-linux-x64.tar.gz"
    sha256 "2a2fcea28a1a1e07da7f147288b53154e7568401f5d8e4ae5cd0fbb64667d46a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151652/kopia-20210516.0.151652-linux-arm.tar.gz"
    sha256 "2f96298e25c47943fd248b552d8a2b3e4eaf319a8724fadfcb0b0f885b42ceb8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210516.0.151652/kopia-20210516.0.151652-linux-arm64.tar.gz"
    sha256 "b8bb56e53605fd978b72421407c389493fb8b1dd705c4ce3f669d7e3e2a7ef6e"
  end

  def install
    bin.install "kopia"
  end
end

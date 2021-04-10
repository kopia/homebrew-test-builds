# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210409.0.191503"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.191503/kopia-20210409.0.191503-macOS-x64.tar.gz"
    sha256 "23c982885cdbdad7b50ea10d63ff3136905b078b4a9d40c33fadbde0fb8c7319"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.191503/kopia-20210409.0.191503-macOS-arm64.tar.gz"
    sha256 "0ea93894ffacdb6179dfd7b182380089dedb4b87fd98069603801029681b55ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.191503/kopia-20210409.0.191503-linux-x64.tar.gz"
    sha256 "ff6dc454d5b7af6d8751f44e99873b2056a468fd2e9f0ad56cac9adc2f95c466"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.191503/kopia-20210409.0.191503-linux-arm.tar.gz"
    sha256 "40b29ceefa4676062dbe99d98116271bab4f1866c54d3791eb0da5efaea6f5e0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.191503/kopia-20210409.0.191503-linux-arm64.tar.gz"
    sha256 "86048a4eab1ca5e25e6b1439f818750a7b8fe2db7add596b76012a8eb06c84b2"
  end

  def install
    bin.install "kopia"
  end
end

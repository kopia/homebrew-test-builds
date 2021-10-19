# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211019.0.81758"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.81758/kopia-20211019.0.81758-macOS-x64.tar.gz"
    sha256 "f21916c95b2db18fed2286d583bcda5b7f6c6988d50745513935de3a89cd07a4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.81758/kopia-20211019.0.81758-macOS-arm64.tar.gz"
    sha256 "8ccaa07dd137856a06e5c7475b095804e59ab80a1a0952169c0b9a94d1fbe3fd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.81758/kopia-20211019.0.81758-linux-x64.tar.gz"
    sha256 "32f8a3ddf09446ce1ad0f52687b53b08a4b6b10d3bc9385b6afaa61b2200155c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.81758/kopia-20211019.0.81758-linux-arm.tar.gz"
    sha256 "c91ee1800ff86f1cead943ad1055ae6590b1cb6822d297de905104eec4c065b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211019.0.81758/kopia-20211019.0.81758-linux-arm64.tar.gz"
    sha256 "0b0d0f5813e6c0a8711eb5ef8e121e989b8489bb14e9591d1d09ef586129a34a"
  end

  def install
    bin.install "kopia"
  end
end

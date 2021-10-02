# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211001.0.225820"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225820/kopia-20211001.0.225820-macOS-x64.tar.gz"
    sha256 "fcfd0a34c3f28c1eb1f22ab98f03792a8f98e0db426dc212aa775c1ffd8b59c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225820/kopia-20211001.0.225820-macOS-arm64.tar.gz"
    sha256 "9337d971b7d7242166677ab3116fa9f72ed822ef5b456b92a4726bf447b1b699"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225820/kopia-20211001.0.225820-linux-x64.tar.gz"
    sha256 "294e020f8c35ce35b75ae37a09be71e1577ed290e97b0c57bf3e069d750b2134"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225820/kopia-20211001.0.225820-linux-arm.tar.gz"
    sha256 "21490d14677e5ba5110ca569c7bc3ef4c549586f41bb04228907705bcb5b19fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225820/kopia-20211001.0.225820-linux-arm64.tar.gz"
    sha256 "6bcbe1b6b3bdf9f42a538b8e162b8c2b8c2de76b9d605213a24aec5eeea27284"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210710.0.85517"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.85517/kopia-20210710.0.85517-macOS-x64.tar.gz"
    sha256 "af189a3a10c7ba6dd0c3f0e65ce52de6999301abf500c7b92597052919a2e005"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.85517/kopia-20210710.0.85517-macOS-arm64.tar.gz"
    sha256 "f9856292d8dbcffd4518f1fab71e86a251334620bb274223f75f70fe1bc08581"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.85517/kopia-20210710.0.85517-linux-x64.tar.gz"
    sha256 "1f19a3185217d520f91b3e7384797b4ac42f8d8f67f66f7adf7ea596badd00db"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.85517/kopia-20210710.0.85517-linux-arm.tar.gz"
    sha256 "dcd670ca2625d6b8e7d4e124a41571442b1d913f34ed71f42036fcb89280d3d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210710.0.85517/kopia-20210710.0.85517-linux-arm64.tar.gz"
    sha256 "7ea34bd4c004e2dea5c7e6993ae5e8ce1bf4972923d3a2b8cda139cfc3323ab1"
  end

  def install
    bin.install "kopia"
  end
end

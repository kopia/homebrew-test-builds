# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240805.0.234435"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.234435/kopia-20240805.0.234435-macOS-x64.tar.gz"
    sha256 "ef0e3520769747aa098c1bbbfea15f966f56fdc5112582d802e0f217765d1770"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.234435/kopia-20240805.0.234435-macOS-arm64.tar.gz"
    sha256 "4d6b3778189f105f768ace99f83ce90112c0342cd46c6b81013ffffee6c11000"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.234435/kopia-20240805.0.234435-linux-x64.tar.gz"
    sha256 "d0edc2adb4a0563e7264e041c2c42f56bb7ea37f6a6d135bc9af3ef1fd27df09"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.234435/kopia-20240805.0.234435-linux-arm.tar.gz"
    sha256 "c76575c31765fab2294ba74b3bfa5471d00bfb54746ec91b9339c90acfb4e1a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.234435/kopia-20240805.0.234435-linux-arm64.tar.gz"
    sha256 "4502330e05b4827e6207659da8a28011b16000f19810eb1519462b42292e0310"
  end

  def install
    bin.install "kopia"
  end
end

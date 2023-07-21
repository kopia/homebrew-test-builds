# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230721.0.113340"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.113340/kopia-20230721.0.113340-macOS-x64.tar.gz"
    sha256 "9bf98f41df19fbdfa262627e3367e97296ad501c12fe36b5e5751caaa38ed77a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.113340/kopia-20230721.0.113340-macOS-arm64.tar.gz"
    sha256 "6e496b96fbd6195d0889d228b4820ed256ff1633569ce9df5bcd088f79d52a4a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.113340/kopia-20230721.0.113340-linux-x64.tar.gz"
    sha256 "7e0cc0534cfe255e0c44a06d4f72abd556741eea869bf4b35907ad780601ce86"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.113340/kopia-20230721.0.113340-linux-arm.tar.gz"
    sha256 "3e919c1fffa250511b8bf916bcd09c1a691a159f327ee8f62308543d58876ef1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230721.0.113340/kopia-20230721.0.113340-linux-arm64.tar.gz"
    sha256 "a8c26f7c79773f499cec0ea519db44b3b77ea0a694db7a66a556b64ffe92d0a9"
  end

  def install
    bin.install "kopia"
  end
end

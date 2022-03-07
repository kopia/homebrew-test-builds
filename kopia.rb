# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.185123"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.185123/kopia-20220306.0.185123-macOS-x64.tar.gz"
    sha256 "2bff66d167dc9e0d4f43c39d1787e3d8311a6ea03d6f0b65bcca64d0e6e69dd3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.185123/kopia-20220306.0.185123-macOS-arm64.tar.gz"
    sha256 "0a57678c8a5fa7402314e57a4960d9b629759c0474bfb8e2e04fd6235731c38e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.185123/kopia-20220306.0.185123-linux-x64.tar.gz"
    sha256 "5c4096b8571d34232b05b659d13963e061c00f857de9061daf4ea8bb33193316"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.185123/kopia-20220306.0.185123-linux-arm.tar.gz"
    sha256 "9efe26e47badd72d64d22d7d1373b241f803a535f19fb1fab36220d034fa53a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.185123/kopia-20220306.0.185123-linux-arm64.tar.gz"
    sha256 "8ecf69036e03d63ccd6480ab89544cb29e608d66da70c5269e30af564d8a0c3e"
  end

  def install
    bin.install "kopia"
  end
end

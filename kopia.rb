# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220114.0.84741"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.84741/kopia-20220114.0.84741-macOS-x64.tar.gz"
    sha256 "46fdb68a11863d81c37c14b4a7a0ba4a06a376199fa9f45cacb8770ee80f8ad3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.84741/kopia-20220114.0.84741-macOS-arm64.tar.gz"
    sha256 "b96b9e1a5664421ec10fd2e0fe948913fc6811b19ee548e88138e8ef71540ee4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.84741/kopia-20220114.0.84741-linux-x64.tar.gz"
    sha256 "e2465dc0d1b723f5a6e6e2656ba818ba28582a82017a08d9689e6f990f727889"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.84741/kopia-20220114.0.84741-linux-arm.tar.gz"
    sha256 "d2275e553f0e196ee82a764429aa378defb8ed16377885bef7596250b4d1f923"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220114.0.84741/kopia-20220114.0.84741-linux-arm64.tar.gz"
    sha256 "ccadcbf115b19d3532dc47f47fdbd69cd767936c0e7a2471e1eaa86ee787e1f2"
  end

  def install
    bin.install "kopia"
  end
end

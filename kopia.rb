# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210409.0.231335"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.231335/kopia-20210409.0.231335-macOS-x64.tar.gz"
    sha256 "d392a55b77343a29726168bf45ea99d8d29fef083c247bbe257e518d2fa499bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.231335/kopia-20210409.0.231335-macOS-arm64.tar.gz"
    sha256 "404371360998b160e07e754db767914eb4ac049516274d040af3008dbbc6a753"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.231335/kopia-20210409.0.231335-linux-x64.tar.gz"
    sha256 "85de60559b7c6eaea1e57b280adcffe45d72acee58b73c63e55eba7ee8fe8a0f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.231335/kopia-20210409.0.231335-linux-arm.tar.gz"
    sha256 "2b7da408c38d4c84b7b5d01210b06d3a10b92eb61309ddbcfcc08b474d8664e6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210409.0.231335/kopia-20210409.0.231335-linux-arm64.tar.gz"
    sha256 "6c0eb4b83b1e0e83cb302f480fc18d42b3babb551c6a3a6089706a1b7ad56a27"
  end

  def install
    bin.install "kopia"
  end
end

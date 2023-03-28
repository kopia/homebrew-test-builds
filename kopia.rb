# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230328.0.94629"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.94629/kopia-20230328.0.94629-macOS-x64.tar.gz"
    sha256 "f2ef47d4cdef2e34abc8ca2b5071977cb3cea2718ec22f945af40b225d803704"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.94629/kopia-20230328.0.94629-macOS-arm64.tar.gz"
    sha256 "1e4bf229c12093c0a3f59cb718d0232d8d0cb0e9c0bb1a7b01a8f73309b67dcb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.94629/kopia-20230328.0.94629-linux-x64.tar.gz"
    sha256 "b81328284f104f365cf2369203b0acb140c2b3875fa6d2879ef58109babeff77"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.94629/kopia-20230328.0.94629-linux-arm.tar.gz"
    sha256 "bcd970994d80b86fd5de061b9d01dbe4e0393708362f28c408a208a8d016cf61"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230328.0.94629/kopia-20230328.0.94629-linux-arm64.tar.gz"
    sha256 "907b29749d40761e205422b101466d260eb2d611681452e9eaef04094b76a000"
  end

  def install
    bin.install "kopia"
  end
end

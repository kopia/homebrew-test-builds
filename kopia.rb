# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.163948"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.163948/kopia-20211103.0.163948-macOS-x64.tar.gz"
    sha256 "8ed883a7186c9b5113de16f9a61ea61b5b55d20d5ec48bd0c826b4535a6e2d94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.163948/kopia-20211103.0.163948-macOS-arm64.tar.gz"
    sha256 "6185753069fc09d321b834f2723ec1d903f614c82c33bb7738f6852a01ab3d21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.163948/kopia-20211103.0.163948-linux-x64.tar.gz"
    sha256 "91461db885dbddae2312fa494a078a9e5a88fca319f96c45ce2c2c44d8689cc2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.163948/kopia-20211103.0.163948-linux-arm.tar.gz"
    sha256 "35ed33e6dafefa113e2256eaf51f3a5380ca8dcf471f54c0f0f5a0832b1ae0b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.163948/kopia-20211103.0.163948-linux-arm64.tar.gz"
    sha256 "b6fb9640a18e9ff921b2d8bba41efa18b4c72b15ea831ad6fd47202dbb4b1b27"
  end

  def install
    bin.install "kopia"
  end
end

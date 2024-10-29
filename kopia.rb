# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241028.0.171221"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.171221/kopia-20241028.0.171221-macOS-x64.tar.gz"
    sha256 "ad8b5e3cda7072b95cc8e556dfd9350bd23133cd318b0e4bc634bde4f32ca77d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.171221/kopia-20241028.0.171221-macOS-arm64.tar.gz"
    sha256 "29506f7ae0ac54256acac29047baf62bb79e4d8fd6bbcbe3f27e4bb5fec8df0c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.171221/kopia-20241028.0.171221-linux-x64.tar.gz"
    sha256 "2ddec1a5346d2928808782db35fb789e94f7ad4b0cd67ebf03006a9128b08564"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.171221/kopia-20241028.0.171221-linux-arm.tar.gz"
    sha256 "1913bd1a613f3a85d876d8acece73877e680d065e7e8db95b2eb00f1434e886c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241028.0.171221/kopia-20241028.0.171221-linux-arm64.tar.gz"
    sha256 "1697ff1587f381f51cb2633f6c57b3f6bdf6508f1514af1c836239b1ac9b98e6"
  end

  def install
    bin.install "kopia"
  end
end

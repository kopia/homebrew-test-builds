# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241115.0.234036"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241115.0.234036/kopia-20241115.0.234036-macOS-x64.tar.gz"
    sha256 "bb3a6048f51e1e3cbc04194dbd0908484758550e55f0616d51a313ef06f922a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241115.0.234036/kopia-20241115.0.234036-macOS-arm64.tar.gz"
    sha256 "4128f636b7eeae03c1d0e18bdd4746f996ad5d3b20ead6ca6775b54f06bcc5f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241115.0.234036/kopia-20241115.0.234036-linux-x64.tar.gz"
    sha256 "ae3091c705f01f47d25467941023b08f690c0e91523862ba442aa67a2e670ad5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241115.0.234036/kopia-20241115.0.234036-linux-arm.tar.gz"
    sha256 "f16030d73ffa45ab2bd28d155465cd665cfe475f8ee31cd1431c459e6c51da9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241115.0.234036/kopia-20241115.0.234036-linux-arm64.tar.gz"
    sha256 "6b4117f0dfcadeba6124f0588c6021b84dc32a7eab331079f39ba220e0a48103"
  end

  def install
    bin.install "kopia"
  end
end

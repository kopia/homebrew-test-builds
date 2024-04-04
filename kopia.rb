# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240404.0.135639"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.135639/kopia-20240404.0.135639-macOS-x64.tar.gz"
    sha256 "2868c4a0f3d21239ed0f5c7d41e64c1ec6611b21f1036d7bbe037aef4ee13179"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.135639/kopia-20240404.0.135639-macOS-arm64.tar.gz"
    sha256 "952ca10c143e6c4a9a9d4ddf9059e61dba117dd7b57818e68d3d35b1e93bf81e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.135639/kopia-20240404.0.135639-linux-x64.tar.gz"
    sha256 "fe8a5afe22856c2b299991f036dd36d1af26f5def66c8b3a7e9699df0d37f43d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.135639/kopia-20240404.0.135639-linux-arm.tar.gz"
    sha256 "28907195656bb63032949c87419f4bd18e94ae5e5e94c04bb538f96678b1307e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.135639/kopia-20240404.0.135639-linux-arm64.tar.gz"
    sha256 "8b2cb9b5bf47adc2c5590eb298a529924a7ab1b61e18812fa72bab486bc2bdd2"
  end

  def install
    bin.install "kopia"
  end
end

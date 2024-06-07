# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240607.0.130044"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.130044/kopia-20240607.0.130044-macOS-x64.tar.gz"
    sha256 "1e0fbac2c73fad2f9de387e12942a0608591fd746b44f54b4a9e7068a5d5a5cb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.130044/kopia-20240607.0.130044-macOS-arm64.tar.gz"
    sha256 "03b5649217ec96d1a5b8805d030565a747518e39283296ecc7d09ee9dcf725f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.130044/kopia-20240607.0.130044-linux-x64.tar.gz"
    sha256 "32b39331924863a64d80692629e7ebb7ec455b59cf2fdadbf5883d4d1ed626d3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.130044/kopia-20240607.0.130044-linux-arm.tar.gz"
    sha256 "7467fbc46bf8c7395e4b50550b42263a05f120a09ec9bfec54a6e1910365a420"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240607.0.130044/kopia-20240607.0.130044-linux-arm64.tar.gz"
    sha256 "a938b245013c80340f490500b42be872559ad18b763fb2eb2974db14ee573ba0"
  end

  def install
    bin.install "kopia"
  end
end

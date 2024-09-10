# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240909.0.181011"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.181011/kopia-20240909.0.181011-macOS-x64.tar.gz"
    sha256 "695dd41ac2348be3d1c7ea44c3057c824cbc408dc50759756cb025fe1ff09834"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.181011/kopia-20240909.0.181011-macOS-arm64.tar.gz"
    sha256 "ecaa0fc6675b08e235fb183c2c0bebfa847f2cf7fd42b1dbe05401e0f081f0ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.181011/kopia-20240909.0.181011-linux-x64.tar.gz"
    sha256 "9d2454b9d312691928af937aa615bd189b13bdcb7c47f9168411a753d3156c31"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.181011/kopia-20240909.0.181011-linux-arm.tar.gz"
    sha256 "4251fa97c93ff6df4d8e391fad23e2fb9f332d8dde886e258f8b2067f3a8ccdb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.181011/kopia-20240909.0.181011-linux-arm64.tar.gz"
    sha256 "bc77093251070438d5156d878dd51f90510015307a091d008b696b23d458cbd0"
  end

  def install
    bin.install "kopia"
  end
end

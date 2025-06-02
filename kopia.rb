# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.61814"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.61814/kopia-20250602.0.61814-macOS-x64.tar.gz"
    sha256 "d2e1ec5835497aa872b90c63c5788687c2ced3033eeeb985fa8c80cf1b99d9a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.61814/kopia-20250602.0.61814-macOS-arm64.tar.gz"
    sha256 "5c73e7ea70a7a4c8bec8f849e49cbc694b5c90991d08e7c86a72bd4619a5d37c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.61814/kopia-20250602.0.61814-linux-x64.tar.gz"
    sha256 "a8bb2c53ab3ec73c5776006f291704f25d36b23ebbaeaca76440a62b0da0ab85"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.61814/kopia-20250602.0.61814-linux-arm.tar.gz"
    sha256 "65ec8bf991421a6fa25c627a638fe383e0f50e5b625a7cb9045a5785f655ac79"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.61814/kopia-20250602.0.61814-linux-arm64.tar.gz"
    sha256 "917ea1a57a5844feb31a8261ee00b51a702c0ea77e44708ea07f6178d6740866"
  end

  def install
    bin.install "kopia"
  end
end

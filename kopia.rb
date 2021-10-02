# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.123359"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.123359/kopia-20211002.0.123359-macOS-x64.tar.gz"
    sha256 "140afb373505d0d0fa5d3d55762d9dad8753ab9967275e7ae08e52e241579ff9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.123359/kopia-20211002.0.123359-macOS-arm64.tar.gz"
    sha256 "f3ee3e8c18c9934b940aaeb5dd1e97972bf1576a7965461bb653a011ff8b2cc4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.123359/kopia-20211002.0.123359-linux-x64.tar.gz"
    sha256 "f43bc8dc55a3584254acc6ef1aea309039a1a12a5010d040e2872e2a70e9d2e6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.123359/kopia-20211002.0.123359-linux-arm.tar.gz"
    sha256 "006249f34ef5f4c53fe29d02e528672d5558bb09693a209bb6e9a063699976a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.123359/kopia-20211002.0.123359-linux-arm64.tar.gz"
    sha256 "8960ec920f520ee9562f042cbcfc5fffd51ecbfffeea5524f5ef1190789959f6"
  end

  def install
    bin.install "kopia"
  end
end
